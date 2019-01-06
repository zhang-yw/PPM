#include "NormalSphere.h"
using namespace std;

const Vec3 NormalSphere::DEFAULT_TEXU = Vec3(1, 0, -3);
const Vec3 NormalSphere::DEFAULT_TEXV = Vec3(0, 1, 0);

Intersection NormalSphere::intersect(const Vec3 &ori, const Vec3 &dir, double &maxDist, Vec3 *P, Vec3 *N, Color *objectColor) const
{
	Vec3 L = C - ori;

	double tangent = dot(L, dir);	
	double det2 = R * R - (L.length2() - tangent * tangent); 
	if (det2 < EPSILON) return MISS;

	double det = sqrt(det2);
	double dist1 = tangent - det, dist2 = tangent + det;
	if (dist1 > maxDist || (dist1 < EPSILON && dist2 > maxDist)) return MISS;
	if (dist2 < EPSILON) return MISS;

	maxDist = (dist1 > EPSILON) ? dist1 : dist2;
	if (P) *P = ori + dir * maxDist;
    if (N) *N = getN(*P);
	if (objectColor) *objectColor = color * (texture == NULL ? Color(1, 1, 1) : this->texColor(*P));
	return (dist1 > EPSILON) ? OUTSIDE : INSIDE;
}

Color NormalSphere::texColor(const Vec3 &P) const
{
	if (texture == NULL) return Color(1, 1, 1);
	Vec3 N = (P - C).normalized();

	double theta = acos(-dot(N, texV));
	double phi = acos(min(max(dot(N, texU) / sin(theta), -1.0), 1.0));
	double u = theta / PI, v = phi / (2 * PI);
	v = (dot(N, cross(texU, texV)) < 0) ? (1 - v) : v;
	return texture->colorUV(u, v);
}	

Vec3 NormalSphere::getN(const Vec3 &P) const
{
    Vec3 N = (P - C).normalized();
	double a = acos(-dot(N, texV));
	double b = acos(min(max(dot(N, texU) / sin(a), -1.0), 1.0));
	double u = a / PI, v = b / 2 / PI;
    v = (dot(N, cross(texU, texV)) < 0) ? (1 - v) : v;
	Color addN = nortexture->colorUV(u, v) * 2 - Color(1, 1, 1);
	Vec3 horizontal= P.y*P.y + P.x*P.x < EPSILON ? Vec3(0, 1, 0) : Vec3(P.y, - P.x, 0).normalized();
	Vec3 newN = N * addN.z + horizontal*addN.y + cross(N, horizontal).normalized() * addN.x;
	return newN.normalized();
}
