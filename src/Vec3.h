#pragma once
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <algorithm>

#define EPSILON 1e-6	
#define PI 3.1415926535897932384626	
#define rand01() (rand() / double(RAND_MAX))	
struct Vec3;
typedef Vec3 Color;

struct Vec3
{
	double x, y, z;
	Vec3() : x(0), y(0), z(0) {}
	Vec3(double x_, double y_, double z_) : x(x_), y(y_), z(z_) {}
	
	double power() const { return (x + y + z) / 3.0; }
	double length() const { return sqrt(x * x + y * y + z * z); }
	double length2() const { return x * x + y * y + z * z; }
	Vec3 normalized() const;
	Vec3 reflected(const Vec3 &N) const;
	Vec3 refracted(const Vec3 &N, double n) const;
	Vec3 rotated(const Vec3 &axis, double angle) const;
	Vec3 normal() const;
	static Vec3 random();
	static Vec3 randomCosine(const Vec3 &N);
	Vec3 operator - () const { return Vec3( -x, -y, -z ); }
	Vec3 operator + ( const Vec3 &v ) const { return Vec3( x + v.x, y + v.y, z + v.z ); }
	Vec3 operator - ( const Vec3 &v ) const { return Vec3( x - v.x, y - v.y, z - v.z ); }
	Vec3 operator * ( const Vec3 &v ) const { return Vec3( x * v.x, y * v.y, z * v.z ); }
	Vec3 operator * ( double k ) const { return Vec3( x * k, y * k, z * k ); }
	Vec3 operator / ( double k ) const { return Vec3( x / k, y / k, z / k ); }
	Vec3 &operator += ( const Vec3 &v ) { return *this = *this + v; }
	Vec3 &operator -= ( const Vec3 &v ) { return *this = *this - v; }
	Vec3 &operator *= ( const Vec3 &v ) { return *this = *this * v; }
	Vec3 &operator *= ( double k ) { return *this = *this * k; }
	Vec3 &operator /= ( double k ) { return *this = *this / k; }
	bool operator == ( const Vec3 &v ) const { 
		return fabs( x - v.x ) < EPSILON && fabs( y - v.y ) < EPSILON && fabs( z - v.z ) < EPSILON;
	}
	double &operator[] ( int i ) {
		if ( i == 0 ) return x; if ( i == 1 ) return y; if ( i == 2 ) return z;
		return x;
	}
	const double operator[] ( int i ) const {
		if ( i == 0 ) return x; if ( i == 1 ) return y; if ( i == 2 ) return z;
		return x;
	}
	friend std::ostream &operator << ( std::ostream &os, const Vec3 &v ) {
		os << '(' << v.x << ", " << v.y << ", " << v.z << ')';
		return os;
	}
	friend double dot( const Vec3 &v1, const Vec3 &v2 ) {
		return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z;
	}
	friend Vec3 cross( const Vec3 &v1, const Vec3 &v2 ) {
		return Vec3( v1.y * v2.z - v1.z * v2.y , v1.z * v2.x - v1.x * v2.z , v1.x * v2.y - v1.y * v2.x );
	}
	friend Vec3 operator* ( double k, const Vec3 &v ) { return v * k; }
};