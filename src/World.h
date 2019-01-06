#pragma once
// 世界类World

#include "Vec3.h"
#include <vector>

class Object;
class Light;
class Camera;
class Renderer;

class World
{
public:
	Renderer *renderer;	
	Camera *camera;	
	int nObject, nLight;	
	std::vector<Object*> objects;	
	std::vector<Light*> lights;		
	Color bgColor;	

public:
	World();
	~World();
	void add(Object *object) { objects.push_back(object); }	
	void add(Light *light) { lights.push_back(light); }	
	void render();	
	void saveImg(const std::string &fileName);	
};