#include "Renderer.h"
#include "World.h"
#include "Light.h"
#include "Camera.h"

#include <omp.h>
#include <ctime>
#include <fstream>
#include <cstdlib>
#include <opencv2/core/core.hpp>  
#include <opencv2/highgui/highgui.hpp>
using namespace std;

void Renderer::render(World *world_)
{
	m_world = world_;
	int height = m_world->camera->height, width = m_world->camera->width;
	m_photo.resize(height);
	for (int i = 0; i < height; i++) m_photo[i].resize(width);
	for (int i = 0; i < height; i++) for (int j = 0; j < width; j++) m_photo[i][j] = Color();

	int startTime = clock();
#pragma omp parallel for schedule(dynamic, 1) num_threads(48)
	for (int i = 0; i < height; i++) 
	for (int j = 0; j < width; j++)
	{
		if(j == width - 1){
			printf("%d/%d\n", i, height);
		}		
		HitPoint hp(i, j, Vec3(1.0, 1.0, 1.0));
		if (m_world->camera->aperture > EPSILON)
		{
			int nSample = m_world->camera->nSample;
			hp.weight /= nSample;
			for (int k = 0; k < nSample; k++)
			{
				auto ray = m_world->camera->rayAperture(i, j);
				Vec3 apertOri = ray.first, apertDir = ray.second;
				m_photo[i][j] += traceRay(hp, apertOri, apertDir, 0);
			}
			m_photo[i][j] /= nSample;
		} else	
		{
			Vec3 ori = m_world->camera->C;
			Vec3 dir = m_world->camera->ray(i, j);
			m_photo[i][j] = traceRay(hp, ori, dir, 0);
		}
	}
	cout << "Elapsed time: " << (clock() - startTime) / CLOCKS_PER_SEC << "s." << endl;
	this->saveImg("RT.jpg");


	m_kdMap.init(m_hitpoints.size(), m_hitpoints.data());	

	for (int i = 0; i < MAX_PPM_ITER; i++)
	{
		double totalPower = 0.0;
		for (Light *light : m_world->lights)
			totalPower += light->color.power();

		double photonPower = totalPower / MAX_PHOTON_NUM;

		for (Light *light : m_world->lights)
		{
			int nPhoton = light->color.power() / photonPower;	
			Vec3 photonColor = light->color / nPhoton;	

#pragma omp parallel for schedule(dynamic, 1) num_threads(48)
				for (int j = 0; j < nPhoton; j++)
				{
					if(j == 0)
						srand(int(time(NULL)) ^ omp_get_thread_num());
					if (j % 100000 == 0) cout << "j = " << j << endl;
					Vec3 ori = light->randomPoint();
					Vec3 dir = Vec3::random();
					Photon photon(ori, dir, photonColor);
					tracePhoton(photon, 0);
				}
		}
		cout << "Elapsed time: " << (clock() - startTime) / CLOCKS_PER_SEC << "s." << endl;

		this->updateKDMap();

		this->evalIrradiance(i + 1);

		this->saveImg("update.jpg");
	}
}

Vec3 Renderer::traceRay(HitPoint hp, const Vec3 &ori, const Vec3 &dir, int depth)
{
	if (depth > MAX_DEPTH) { 
#pragma omp critical
		m_bgHitpoints.push_back(hp); 
		return m_world->bgColor; }

	double maxDist = INT_MAX;
	Object *nearestObject = NULL;
	Vec3 P, N, objectColor;	// 碰撞位置、法向量、颜色
	Intersection intersection = MISS, temp = MISS;
	for (Object *object : m_world->objects)
		if ((temp = object->intersect(ori, dir, maxDist, &P, &N, &objectColor)))
			nearestObject = object, intersection = temp;

	if (!nearestObject) { 
#pragma omp critical
		m_bgHitpoints.push_back(hp); 
		return m_world->bgColor; }

	Vec3 ret(0, 0, 0);
	if (nearestObject->diff > EPSILON || nearestObject->spec > EPSILON)	
	{
		HitPoint hpDiff = hp;
		hpDiff.object = nearestObject; hpDiff.P = P; hpDiff.N = N; hpDiff.I = dir;
		hpDiff.weight *= objectColor * nearestObject->diff;
		hpDiff.radius2 = INIT_RADIUS * INIT_RADIUS;
#pragma omp critical
		m_hitpoints.push_back(hpDiff);

		for (Light *light : m_world->lights)
		{
			bool visible = true;
			Vec3 L = light->C - P;				
			double objectDist = L.length();		
			for (Object *object : m_world->objects)
				if (object != nearestObject 
				 && object->intersect(P, L.normalized(), objectDist))
					{ visible = false; break; }
			if (!visible) continue;

			L = L.normalized();
			Vec3 V = (ori - P).normalized();
			ret += light->phong(N, L, V, nearestObject->diff, nearestObject->spec, objectColor);
		}
	} 
	if (nearestObject->refl > EPSILON)	
	{
		HitPoint hpRefl = hp;
		hpRefl.weight *= objectColor * nearestObject->refl;
		ret += traceRay(hpRefl, P, dir.reflected(N), depth + 1) * nearestObject->refl * objectColor;
	}
	if (nearestObject->refr > EPSILON)
	{
		HitPoint hpRefr = hp;
		hpRefr.weight *= objectColor * nearestObject->refr;
		double n = (intersection == INSIDE) ? nearestObject->ior : (1 / nearestObject->ior);
		Vec3 refracted = dir.refracted((intersection == INSIDE ? -N : N), n);
		ret += traceRay(hpRefr, P, refracted, depth + 1) * nearestObject->refr * objectColor;
	}
	return ret;
}

void Renderer::tracePhoton(Photon &photon, int depth)
{
	if (depth > MAX_DEPTH) return;

	double maxDist = INT_MAX;
	Object *nearestObject = NULL;
	Vec3 P, N, objectColor;
	Intersection intersection = MISS, temp = MISS;
	for (Object *object : m_world->objects)
		if ((temp = object->intersect(photon.ori, photon.dir, maxDist, &P, &N, &objectColor)))
			nearestObject = object, intersection = temp;

	if (!nearestObject) return;

	photon.P = P; photon.object = nearestObject;

	if (nearestObject->diff > EPSILON && dot(photon.dir, N) < 0){
		 m_kdMap.insertPhoton(photon);
	}
	Photon newPhoton = photon;
	newPhoton.color *= objectColor; newPhoton.ori = P;

	double estimater = rand01();
	double mark1 = nearestObject->diff + nearestObject->spec,
		   mark2 = mark1 + nearestObject->refl,
		   mark3 = mark2 + nearestObject->refr;
	if (estimater < mark1)	
	{
		newPhoton.dir = Vec3::randomCosine(N);
		tracePhoton(newPhoton, depth + 1);
	} else if (estimater < mark2)	
	{
		newPhoton.dir = photon.dir.reflected(N);
		tracePhoton(newPhoton, depth + 1);
	} else 
	{
		double n = (intersection == INSIDE) ? nearestObject->ior : (1 / nearestObject->ior);
		newPhoton.dir = photon.dir.refracted((intersection == INSIDE) ? -N : N, n);
		tracePhoton(newPhoton, depth + 1);
	}
}

void Renderer::updateKDMap()
{
	int nHitpoint = 0;
	HitPoint *hitpoints = m_kdMap.data(/*&*/nHitpoint);

	for (int i = 0; i < nHitpoint; i++) hitpoints[i].update(ALPHA);
	m_kdMap.update();
}

void Renderer::evalIrradiance(int nIter)
{
	int height = m_world->camera->height, width = m_world->camera->width;
	for (int i = 0; i < height; i++) for (int j = 0; j < width; j++) m_photo[i][j] = Vec3(0, 0, 0);

	int nHitpoint = 0;
	HitPoint *hitpoints = m_kdMap.data(nHitpoint);
	for (int i = 0; i < nHitpoint; i++)
	{
		HitPoint hp = hitpoints[i];
		Vec3 irradiance = 10000.0 * hp.phi / (hp.radius2 * nIter);
		m_photo[hp.row][hp.col] += irradiance * hp.weight;
	}

	Vec3 bgColor = m_world->bgColor;
	for (int i = 0; i < m_bgHitpoints.size(); i++)
	{
		HitPoint hp = m_bgHitpoints[i];
		m_photo[hp.row][hp.col] += bgColor * hp.weight;
	}
}

void Renderer::saveImg(const string &fileName)
{
	cv::Mat_<cv::Vec3b> img;
	int height = m_world->camera->height, width = m_world->camera->width;
	img.create(height, width);

	for (int i = 0; i < height; i++) for (int j = 0; j < width; j++)
		for (int k = 0; k < 3; k++)
			img(i, j)[k] = min(m_photo[i][j][2 - k], 1.0) * 255;

	cv::imwrite(fileName, img);
}
