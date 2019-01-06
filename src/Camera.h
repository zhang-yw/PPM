#pragma once
// 摄像机类Camera

#include "Vec3.h"

class Camera
{
public:
	Vec3 C;  				
	Vec3 F, H, W;	    	
	int height, width;		
	int shiftH, shiftW; 	

	double aperture;    
	double focalDist;   
	int nSample;   

	static const Vec3 DEFAULT_C;		
	static const double DEFAULT_LENS;	
	static const int DEFAULT_HEIGHT;	
	static const int DEFAULT_WIDTH;		
	static const double DEFAULT_APERTURE;	
	static const double DEFAULT_FOCAL_DIST; 
	static const int DEFAULT_SAMPLE_NUM;	
	typedef std::pair<Vec3, Vec3> Ray;

public:
	Camera(const Vec3 &C_ = DEFAULT_C, 
		   double aperture_ = DEFAULT_APERTURE,
		   double focalDist_ = DEFAULT_FOCAL_DIST,
		   double nSample_ = DEFAULT_SAMPLE_NUM) 
		   : C(C_), height(DEFAULT_HEIGHT), width(DEFAULT_WIDTH),
		     aperture(aperture_), focalDist(focalDist_), nSample(nSample_) {}

	void lookAt(const Vec3 &P, int shiftH_ = 0, int shiftW_ = 0, double scale = 1.0);
	Vec3 ray(double h, double w) const;
	Ray rayAperture(double h, double w) const;
};