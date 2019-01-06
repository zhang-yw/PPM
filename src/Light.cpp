#include "Light.h"
#include <cmath>
using namespace std;

Color PointLight::phong(
	const Vec3 &N, 
	const Vec3 &L, const Vec3 &V, 
	double diff, double spec,
	const Color &objectColor) const
{
	Color ret = Vec3(0, 0, 0);	
	Color mixColor = objectColor * color;

	double cosI = max(dot(N, L), 0.0);
	ret += diff * cosI * mixColor;

	Vec3 H = (L + V).normalized();
	double cosR = (cosI <= EPSILON ? 0.0 : pow(max(dot(N, H), 0.0), 10));
	ret += cosR * spec * mixColor;

	return ret;
}