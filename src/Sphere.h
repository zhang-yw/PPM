#pragma once
#include "Object.h"

class Sphere : public Object
{
public:
	Vec3 C;   
	double R; 
	Vec3 texU, texV; 
	const static Vec3 DEFAULT_TEXU;	
	const static Vec3 DEFAULT_TEXV;

public:
	Sphere(const Vec3 &C_, double R_, const std::string &name_ = "")
		: Object(name_), C(C_), R(R_) {
			texU = DEFAULT_TEXU.normalized();
			texV = DEFAULT_TEXV.normalized();
		}
	virtual Intersection intersect(const Vec3 &ori, const Vec3 &dir, double &maxDist, Vec3 *P = NULL, Vec3 *N = NULL, Color *objectColor = NULL) const;
	Color texColor(const Vec3 &P) const;
};