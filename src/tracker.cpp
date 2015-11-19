#include <iostream>
#include <aruco/aruco.h>
#include <aruco/cvdrawingutils.h>
#include "opencv2/opencv.hpp"
#include <opencv2/highgui/highgui.hpp>
#include "tracker.h"

using namespace cv;
using namespace aruco;

tracker::tracker(Mat camera_intrinsics, float msize){
	intrinsics = camera_intrinsics;
	markerSize = msize;
}

bool tracker::track(Mat frame, Mat& extrinsics ){
	vector<Marker> Markers;
	MDetector.detect(frame, Markers, intrinsics, Mat(), markerSize);

	/*DEBUG
	for (int i = 0; i < Markers.size(); i++){
		Markers[i].draw(frame, Scalar(0,0,255), 2);
	}
	cv::imshow("in", frame);
    cv::waitKey(25);//wait for key to be pressed
	*/
	if(Markers.size() > 0){
		Marker fmark = Markers[0];

		//Getting extrinsics
		cv::Mat rotationMatrix(3,3, CV_64F);
		Rodrigues(fmark.Rvec, rotationMatrix);
		cv::Mat T(4, 4, CV_64F);
		//cout << "rotation mat: " << rotationMatrix << endl;
		T(cv::Range(0,3), cv::Range(0,3)) = rotationMatrix * 1;
		T(cv::Range(0,3), cv::Range(3,4)) = fmark.Tvec * 1;
		T.at<double>(3, 0) = 0;
		T.at<double>(3, 1) = 0;
		T.at<double>(3, 2) = 0;
		T.at<double>(3, 3) = 1;
		extrinsics = T;
		return true;
	}
	extrinsics = Mat();
	return false;
	
}
