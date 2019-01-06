#pragma once
#include "Object.h"

class Photon
{
public:
	Vec3 ori, dir, P;	
	Color color; 
	Object *object; 
	Photon(const Vec3 &ori_, const Vec3 &dir_, const Color &color_)
		: ori(ori_), dir(dir_), color(color_) {}
};

class KDMap
{
	static const int K = 3;
	struct Node
	{
		int value;
		int split;
		Node *left, *right;
	} *m_memory;	

private:
	Node *m_root;	
	int m_size;		
	int *m_index;	
	int m_nNode;	
	HitPoint *m_data;

	void medianPartition(int l, int r, int dim, int k); 
	Node* build(int l, int r, double *min, double *max);
	void insertPhoton(Node *node, const Photon &photon);
	void update(Node *node);

public:
	~KDMap();
	
	HitPoint *data(int &_size) const { _size = m_size; return m_data; }
	void init(int _size, HitPoint *_data) { load(_size, _data); build(); }
	void load(int _size, HitPoint *_data); 
	void build(); 
	void insertPhoton(const Photon &photon);
	void update();
	double BRDF(Vec3 ray_R, Vec3 N, Vec3 ray_I, Object* object);
}; 
