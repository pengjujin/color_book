#ifndef TRACKER_H
#define TRACKER_H

#include "opencv2/opencv.hpp"
#include <aruco/aruco.h>

using namespace cv;
using namespace std;
using namespace aruco;

class tracker{
	private:
		Mat intrinsics;
		float markerSize;
		MarkerDetector MDetector;
	public:
		tracker(Mat intrin, float msize);
		bool track(Mat, Mat&);
};

#endif