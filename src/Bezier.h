#pragma once
#include "Vec3.h"
#include "Object.h"
#include <queue>
#include <Eigen/Dense>

typedef Eigen::Vector3d EVec3d;

class Node;
class Double3Bezier : public Object
{
public:
	EVec3d C;		
	EVec3d P[16];	

public:
	Double3Bezier(const Vec3 &C_, EVec3d *P_, const std::string &name_ = "")
		: Object(name_) {
		C = EVec3d(C_[0], C_[1], C_[2]);
		for (int i = 0; i < 16; i++) P[i] = P_[i] + C;
		saveAsObj(P_);
	}

	virtual Intersection intersect(const Vec3 &ori, const Vec3 &dir, double &maxDist,
		/*output*/ Vec3 *P = NULL, Vec3 *N = NULL, Vec3 *objectColor = NULL) const;
	void saveAsObj(EVec3d *P_);

private:
	EVec3d newton(const EVec3d &ori, const EVec3d &dir, const Node &patch, int maxIter, int *nIter) const;
};

struct BoundingBox
{
	EVec3d Pmax, Pmin;
	BoundingBox(const EVec3d *P);
	double infNorm() const { return (Pmax - Pmin).lpNorm<Eigen::Infinity>(); }
	bool intersect(const EVec3d &ori, const EVec3d &dir);
};