#include "World.h"
#include "Object.h"
#include "Camera.h"
#include "Renderer.h"
using namespace std;

World::World() : nObject(0), nLight(0) 
{
	renderer = new Renderer;
	camera = new Camera;
}

World::~World() 
{
	delete camera;
	for (int i = 0; i < nObject; i++) delete objects[i];
	for (int i = 0; i < nLight; i++) delete lights[i];
}

void World::render() { 
	renderer->render(this); 
}
void World::saveImg(const std::string &fileName) { 
	renderer->saveImg(fileName); 
}