#include "Camera.h"
using namespace std;

const Vec3 	 Camera::DEFAULT_C = Vec3(-50, 100, 100);
const double Camera::DEFAULT_LENS = 2800;
const int 	 Camera::DEFAULT_HEIGHT = 768;
const int 	 Camera::DEFAULT_WIDTH = 1024;
const double Camera::DEFAULT_APERTURE = 0;
const double Camera::DEFAULT_FOCAL_DIST = 90;
const int    Camera::DEFAULT_SAMPLE_NUM = 20;

void Camera::lookAt(const Vec3 &P, int shiftH_, int shiftW_, double scale)
{
	const Vec3 up(0, 1, 0);	
	F = (P - C).normalized() * DEFAULT_LENS * scale;	
	W = cross(F, up).normalized() * DEFAULT_WIDTH * scale;	
	H = -cross(W, F).normalized() * DEFAULT_HEIGHT * scale;	
	focalDist = C.z - P.z;	
	shiftH = shiftH_ * scale; shiftW = shiftW_ * scale;
	height *= scale; width *= scale;
}

Vec3 Camera::ray(double h, double w) const
{
	h += shiftH; w += shiftW;
	return (F + H * (2 * h / height - 1) + W * (2 * w / width - 1)).normalized();
}

Camera::Ray Camera::rayAperture(double h, double w) const
{
	h += shiftH; w += shiftW;
	Vec3 emitDir = F + H * (2 * h / height - 1) + W * (2 * w / width - 1);
	Vec3 target = C + emitDir * focalDist / -emitDir.z;

	double detH, detW;
	do { detH = rand01() * 2.0 - 1.0; detW = rand01() * 2.0 - 1.0; } while (detH * detH + detW * detW >= 1.0);
	Vec3 unitH = H.normalized(), unitW = W.normalized();

	Vec3 ori = C + (unitH * detH + unitW * detW) * aperture;
	Vec3 dir = (target - ori).normalized();
	return make_pair(ori, dir);
}
