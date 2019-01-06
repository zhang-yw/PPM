#include "Object.h"
#include <opencv2/core/core.hpp>  
#include <opencv2/highgui/highgui.hpp>

using namespace cv;
using namespace std;

Texture::Texture(const string &fileName)
{
	Mat_<Vec3b> map = imread(fileName, IMREAD_COLOR);
	rows = map.rows; cols = map.cols;
	m_map.resize(rows); 
	for (int i = 0; i < rows; i++) m_map[i].resize(cols);

	for (int i = 0; i < rows; i++) for (int j = 0; j < cols; j++)
		for (int co = 0; co < 3; co++)
			m_map[i][j][co] = map(i, j)[2 - co] / 255.0;
}

Color Texture::colorUV(double u, double v) const
{
	double row = (u - floor(u)) * rows, col = (v - floor(v)) * cols;

	int r1 = (int)floor(row + EPSILON), r2 = r1 + 1;
	int c1 = (int)floor(col + EPSILON), c2 = c1 + 1;

	double detR = r2 - row, detC = c2 - col;
	r1 = (r1 >= 0) ? (r1 >= rows ? 0 : r1) : (rows - 1);
	c1 = (c1 >= 0) ? (c1 >= cols ? 0 : c1) : (cols - 1);
	r2 = (r2 < rows) ? r2 : 0;
	c2 = (c2 < cols) ? c2 : 0;

	return m_map[r1][c1] * detR * detC
		 + m_map[r1][c2] * detR * (1 - detC)
		 + m_map[r2][c1] * (1 - detR) * detC
		 + m_map[r2][c2] * (1 - detR) * (1 - detC);
}