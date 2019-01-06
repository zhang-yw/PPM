#include "utils.h"
#include <climits>
#include <iostream>
#include <algorithm>
using namespace std;

void KDMap::load(int _size, HitPoint *_data)
{
	m_nNode = 0;
	m_size = _size;
	m_data = _data;
	m_index = new int[m_size];
	m_memory = new Node[m_size];
	for (int i = 0; i < m_size; ++i) 
		m_index[i] = i;
}

void KDMap::medianPartition(int l, int r, int dim, int k)
{
	int mid = (l + r) >> 1, temp = m_index[mid];
	int i = l, j = r;
	while (i < j)
	{
		while (m_data[m_index[i]].P[dim] < m_data[temp].P[dim]) ++i;
		while (m_data[m_index[j]].P[dim] > m_data[temp].P[dim]) --j;
		if (i <= j)
		{
			int t = m_index[i]; m_index[i] = m_index[j]; m_index[j] = t;
			++i; --j;
		}
	}
	if (l < j && l <= k && k <= j) medianPartition(l, j, dim, k);
	if (i < r && i <= k && k <= r) medianPartition(i, r, dim, k);
}

KDMap::Node* KDMap::build(int l, int r, double *min, double *max)
{
	if (r <= l) return NULL;
	double temp = -1; int split;
	for (int i = 0; i < K; ++i) if (max[i] - min[i] > temp)
	{
		temp = max[i] - min[i];
		split = i;
	}
	int mid = (l + r) >> 1;
	medianPartition(l, r - 1, split, mid);
	m_memory[m_nNode].value = m_index[mid];
	m_memory[m_nNode].split = split;
	Node *node = &m_memory[m_nNode++];

	temp = max[split];
	max[split] = m_data[m_index[mid]].P[split];
	node->left = build(l, mid, min, max);
	max[split] = temp;

	temp = min[split];
	min[split] = m_data[m_index[mid]].P[split];
	node->right = build(mid + 1, r, min, max);
	min[split] = temp;

	m_data[node->value].maxRadius2 = m_data[node->value].radius2;
	if (node->left && m_data[node->left->value].maxRadius2 > m_data[node->value].maxRadius2)
		m_data[node->value].maxRadius2 = m_data[node->left->value].maxRadius2;

	if (node->right && m_data[node->right->value].maxRadius2 > m_data[node->value].maxRadius2)
		m_data[node->value].maxRadius2 = m_data[node->right->value].maxRadius2;

	return node;
}

void KDMap::build()
{
	m_nNode = 0;
	double *min = new double[K], *max = new double[K];
	for (int i = 0; i < K; ++i) min[i] = LONG_MAX, max[i] = LONG_MIN;
	for (int i = 0; i < m_size; ++i)
	{
		Vec3 temp = m_data[i].P;;
		for (int j = 0; j < K; ++j)
		{
			if (m_data[i].P[j] < min[j]) min[j] = m_data[i].P[j];
			if (m_data[i].P[j] > max[j]) max[j] = m_data[i].P[j];
		}
	}
	m_root = build(0, m_size, min, max);
}

void KDMap::insertPhoton(Node *node, const Photon &photon)
{
	if (node == NULL) return;

	int pos = node->value;
	if (dot(m_data[pos].P - photon.P, m_data[pos].P - photon.P) < m_data[pos].radius2)
		if (photon.object == m_data[pos].object)
		{
			m_data[pos].nNew += 1;
			m_data[pos].phi += photon.color * BRDF(-photon.dir, m_data[pos].N, -m_data[pos].I, m_data[pos].object);
		}

	int split = node->split;
	Node *another;
	if (photon.P[split] < m_data[pos].P[split])
	{
		another = node->right;
		insertPhoton(node->left, photon);
	}
	else
	{
		another = node->left;
		insertPhoton(node->right, photon);
	}
	if ((another) &&
		(m_data[pos].P[split] - photon.P[split]) * (m_data[pos].P[split] - photon.P[split]) < m_data[another->value].maxRadius2 + EPSILON)
		insertPhoton(another, photon);
}

double KDMap::BRDF(Vec3 ray_R, Vec3 N, Vec3 ray_I, Object* object){
	double ret = 0;
	ray_R = ray_R.normalized();
	ray_I = ray_I.normalized();
	double diff = object->diff;
	double spec = object->spec;

	if(diff > EPSILON && dot(ray_R, N) > EPSILON)
		ret += diff * dot(ray_R, N);
	if(spec > EPSILON && dot(ray_R, -ray_I.reflected(N)) > EPSILON)
		ret += spec * pow(dot(ray_R, -ray_I.reflected(N)), 50);

	return ret;
}

void KDMap::insertPhoton(const Photon &photon)
{
	insertPhoton(m_root, photon);
}

void KDMap::update(Node *node)
{
	if (node->left) update(node->left);
	if (node->right) update(node->right);
	m_data[node->value].maxRadius2 = m_data[node->value].radius2;
	if (node->left && m_data[node->left->value].maxRadius2 > m_data[node->value].maxRadius2)
		m_data[node->value].maxRadius2 = m_data[node->left->value].maxRadius2;

	if (node->right && m_data[node->right->value].maxRadius2 > m_data[node->value].maxRadius2)
		m_data[node->value].maxRadius2 = m_data[node->right->value].maxRadius2;
}

void KDMap::update()
{
	update(m_root);
}

KDMap::~KDMap()
{
	delete[] m_root;
	delete[] m_index;
	delete[] m_memory;
}
