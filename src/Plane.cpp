#include "Plane.h"
using namespace std;

const Vec3 Plane::DEFAULT_TEXU = Vec3(400, 0, 0);
const Vec3 Plane::DEFAULT_TEXV = Vec3(0, 0, 400);

Intersection Plane::intersect(const Vec3 &ori, const Vec3 &dir, double &maxDist, Vec3 *P, Vec3 *N_, Color *objectColor) const
{
	double bsinA = dot(C - ori, N);
	double sinB = dot(dir, N);
	if (fabs(sinB) < EPSILON) return MISS;

	double a = bsinA / sinB;
	if (a > EPSILON && a < maxDist)
	{
		maxDist = a;
		if (P) *P = ori + dir * maxDist;
		if (N_) *N_ = N;
		if (objectColor) *objectColor = color * (texture == NULL ? Color(1, 1, 1) : this->texColor(*P));
		return OUTSIDE;
	}
	return MISS;
}

Color Plane::texColor(const Vec3 &P) const
{
	if (texture == NULL) return Vec3(1, 1, 1);
	double v = 0.5 + (P.x - C.x) / texU.length();
	double u = 0.5 + (P.z - C.z) / texV.length();
	return texture->colorUV(u, v);
}
