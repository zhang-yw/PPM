#pragma once
// 渲染器类Renderer

#include "Object.h"
#include "utils.h"
#include <vector>

class World;
class Renderer
{
public:
	const static int MAX_DEPTH = 8;	
	const static int MAX_PPM_ITER = 100000;	
	const static int MAX_PHOTON_NUM = 5000000;	
	const double INIT_RADIUS;	
	const double ALPHA;	

public:
	Renderer() : INIT_RADIUS(2), ALPHA(0.5) {}	
	~Renderer() {}

	void render(World *world);	
	Color traceRay(HitPoint hp, const Vec3 &ori, const Vec3 &dir, int depth);
	void tracePhoton(Photon &photon, int depth);
	void saveImg(const std::string &fileName);

private:
	void updateKDMap();
	void evalIrradiance(int nIter);

private:
	World *m_world;
	std::vector<std::vector<Vec3>> m_photo;
	std::vector<HitPoint> m_hitpoints;
	std::vector<HitPoint> m_bgHitpoints;
	KDMap m_kdMap;
};
