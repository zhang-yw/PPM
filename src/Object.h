#pragma once
#include "Vec3.h"
#include <cmath>
#include <string>
#include <vector>
#include <cstdlib>
#include <iostream>

struct Texture
{
public:
	Texture(const std::string &fileName);
	Color colorUV(double u, double v) const;	
	int rows, cols;

private:
	std::vector<std::vector<Vec3>> m_map;
};

enum Intersection 
{ 
	OUTSIDE = 1, 	
	INSIDE = -1,	
	MISS = 0		
};
struct HitPoint;
class Object
{
public:
	Color color;	
	double diff, spec, refl, refr;	
	double ior;			
	Texture *texture;	
	int id;				
	std::string name;	
public:
	Object(const std::string &name_ = "") : name(name_), texture(NULL), id(rand()) {}
	~Object() {}

	void setMaterial(
		const Color &color_ = Color(), 
		double diff_ = 1, 
		double spec_ = 0,
		double refl_ = 0,
		double refr_ = 0,
		double ior_ = 1.4)	{
		color = color_;
		diff = diff_; spec = spec_; refl = refl_; refr = refr_;
		ior = ior_;
	}
	void setTexture(Texture *texture_) { 
		texture = texture_; 
	}

	virtual Intersection intersect(const Vec3 &ori, const Vec3 &dir, double &maxDist, Vec3 *P = NULL, Vec3 *N = NULL, Color *objectColor = NULL) const = 0;
};

struct HitPoint
{
	Vec3 P, N, I;		
	Object *object;	
	int row, col; 	
	Color weight;	
	Color phi;		
	double radius2, maxRadius2;	
	double nAccum, nNew;	

	HitPoint() {}
	HitPoint(int row_, int col_, const Color &weight_)
		: row(row_), col(col_), weight(weight_),
		  nAccum(0), nNew(0), phi(Color(0, 0, 0)) {}

	void update(double a) {	
		if (nAccum <= 0 || nNew <= 0) return;	
		double k = (nAccum + a * nNew) / (nAccum + nNew);	
		radius2 *= k; phi *= k;		
		nAccum += a * nNew; nNew = 0;	
	}
};
