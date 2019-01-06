#pragma once
#include "Vec3.h"

class Light
{
public:
	Vec3 C;	
	Color color; 

public:
	Light(const Vec3 &C_, const Color &color_) 
		: C(C_), color(color_) {}

	virtual Vec3 randomPoint() const = 0;

	virtual Color phong(
		const Vec3 &N, 				  
		const Vec3 &L, const Vec3 &V, 
		double diff, double spec,	  
		const Color &objectColor
	) const = 0;
};

class PointLight : public Light
{
public:
	PointLight(const Vec3 &C_, const Color &color_)
		: Light(C_, color_) {}

	virtual Vec3 randomPoint() const { return C; }

	virtual Color phong(
		const Vec3 &N, 
		const Vec3 &L, const Vec3 &V, 
		double diff, double spec,
		const Color &objectColor
	) const;
};