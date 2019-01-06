#include "Object.h"
#include "Light.h"
#include "World.h"
#include "Camera.h"
#include "Mesh.h"
#include "Renderer.h"
#include <omp.h>
#include <cmath>
#include <iostream>
#include <opencv2/core/core.hpp>  
#include <opencv2/highgui/highgui.hpp>
using namespace Eigen;
using namespace cv;
using namespace std;

Mat img(800, 600, CV_8UC3);

Vector3d *createStone(){
        Vector3d *ret = new Vector3d[16];
        int coeff = 30;
        ret[0] = Vector3d(-2.5, 2.5, 0) * coeff;
        ret[4] = Vector3d(-2, 2, 1) * coeff;
        ret[8] = Vector3d(-3, 2, 1) * coeff;
        ret[12] = Vector3d(-2.5, 2.5, 0) * coeff;
        ret[1] = Vector3d(-1, 1, 1) * coeff;
        ret[5] = Vector3d(-1, 1, 2) * coeff;
        ret[9] = Vector3d(-4, 1, 2) * coeff;
        ret[13] = Vector3d(-4, 1, 1) * coeff;
        ret[2] = Vector3d(-1, 4, 1) * coeff;
        ret[6] = Vector3d(-1, 4, 2) * coeff;
        ret[10] = Vector3d(-4, 4, 2) * coeff;
        ret[14] = Vector3d(-4, 4, 1) * coeff;
        ret[3] = Vector3d(-2.5, 2.5, 0) * coeff;
        ret[7] = Vector3d(-2, 3, 1) * coeff;
        ret[11] = Vector3d(-3, 3, 1) * coeff;
        ret[15] = Vector3d(-2.5, 2.5, 0) * coeff;
        return ret;
}

int main()
{
	// world
	World *world = new World;
	world->bgColor = (Vec3(0, 0, 0));

	// Textures
	Texture *marble = new Texture("marble.bmp");
	Texture *wood = new Texture("wood_mine.jpg");
	Texture *cloud = new Texture("cloud.jpg");
	Texture *stone = new Texture("stone.jpg");
	Texture *stoneWall = new Texture("StoneWall.jpg");
	Texture *stoneWall_nor = new Texture("StoneWall_nor.jpg");

	Plane *bottomWall = new Plane(Vec3(0, 0, -140), Vec3(0, 1, 0), "floor");
	bottomWall->setMaterial(Vec3(.9, .9, .9), .8, 0, .2, 0, 1.4);
	bottomWall->setTexture(wood);
	world->add(bottomWall);

	// Light
	PointLight *light = new PointLight(Vec3(0, 95, -100), Vec3(1, 1, 1) * 2);
	world->add(light);

	PointLight *light2 = new PointLight(Vec3(125, 50, -200), Vec3(1, 1, 1) * 2);
	world->add(light2);

	PointLight *light3 = new PointLight(Vec3(0, 70, -160), Vec3(1, 1, 1) * 1);
	world->add(light3);

	PointLight *light4 = new PointLight(Vec3(50, 50, -50), Vec3(1, 1, 1) * 2);
	world->add(light4);

	PointLight *light5 = new PointLight(Vec3(-50, 50, -50), Vec3(1, 1, 1) * 2);
        world->add(light5);

	Sphere *largeSphere = new Sphere(Vec3(90, 20, -190), 20, "largeSphere");
	largeSphere->setMaterial(Vec3(.9, .9, .9), 0, 0, 1, 0, 1.4);
	world->add(largeSphere);

	//stone 
	Double3Bezier *stone_b = new Double3Bezier(Vec3(-22, 0, -180) + Vec3(110, -50, 0), createStone(), "stone");
	stone_b->setMaterial(Vec3(1, 1, 1) * .999, .6, 0, .4, 0, 1.4);
	stone_b->setTexture(stone);
	world->add(stone_b);

	Vec3 trans(40, 0, 90);
	Sphere *sphere = new Sphere(Vec3(-45, 10, -150) + trans, 10, "sphere");
	sphere->setMaterial(Vec3(.7, .9, .9), 0, 0, 0, 1, 1.4);
	world->add(sphere);

	Sphere *sphere2 = new Sphere(Vec3(-56, 10, -185) + trans, 10, "sphere");
	sphere2->setMaterial(Vec3(.9, .9, .9), 0.6, 0.1, 0.3, 0, 1.4);
	sphere2->setTexture(marble);
	world->add(sphere2);

	Sphere *sphere3 = new Sphere(Vec3(5, 10, -150) + trans, 10, "sphere");
	sphere3->setMaterial(Vec3(.9, .9, .9), 0.6, 0.1, 0.3, 0, 1.4);
	sphere3->setTexture(cloud);
	world->add(sphere3);

	Sphere *sphere4 = new Sphere(Vec3(-10, 10, -185) + trans, 10, "sphere");
	sphere4->setMaterial(Vec3(.9, .9, .9), 0, 0, 1, 0, 1.4);
	world->add(sphere4);

	NormalSphere *norsphere = new NormalSphere(Vec3(-90, 15, -190) + trans, 15, "norsphere");
	norsphere->setMaterial(Vec3(.9, .9, .9), 1, 0, 0, 0, 1.4);
	norsphere->setTexture(stoneWall);
	norsphere->setNorTexture(stoneWall_nor);
	world->add(norsphere);

	// look at
	double s = 1 / 0.6;
	world->camera->lookAt(Vec3(20, 0, -200), 0, 0, s);

	// Render
	printf("Render start.");
	world->render();

	system("pause");
	return 0;
}

