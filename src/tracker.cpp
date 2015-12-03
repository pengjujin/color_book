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
		
		for(int i = 0; i < 3; i++){
			for(int j = 0; j < 3; j++){
				extrinsics.at<double>(i,j) = rotationMatrix.at<float>(i,j);
			}
		}

		extrinsics.at<double>(0, 3) = fmark.Tvec.at<float>(0,0);
		extrinsics.at<double>(1, 3) = fmark.Tvec.at<float>(1,0);
		extrinsics.at<double>(2, 3) = fmark.Tvec.at<float>(2,0);
		return true;
	}
	extrinsics = Mat();
	return false;
	
}
