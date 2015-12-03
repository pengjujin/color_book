#include "opencv2/opencv.hpp"
#include "tracker.h"
#include "texture_model_util.h"
using namespace cv;
using namespace aruco;

#include <stdio.h>
#include <stdlib.h>

/*
cv::Mat intrinsics = (Mat_<double>(3,3) << 628.9, 0, 317.53, 0, 624.08, 229.5, 0, 0, 1);
cv::Mat intrinsics_4 = (Mat_<double>(4,4) << 628.9, 0, 		317.53, 0, 
											 0, 	624.08, 229.5, 	0,
											 0, 	0, 		1, 		0,
											 0,		0,		0,		1);
*/
//Generate 4 x 4 homogenous transform with translation only
Mat translation_mat(double x, double y){
	Mat trans = Mat::zeros(4, 4, CV_64F);	
	trans.at<double>(0,3) = x;
	trans.at<double>(1,3) = y;
	trans.at<double>(3,3) = 1;
	return trans;
}

Point getPt(Mat hom_vec){
	double x = hom_vec.at<double>(0) / hom_vec.at<double>(2);
	double y = hom_vec.at<double>(1) / hom_vec.at<double>(2);
	return Point(x, y);
}

Mat to4by4(Mat intrinsics){
	 Mat intrin_4(4, 4, CV_64F, 0.0);
	 for(int i = 0; i < 3; i++){
	 	for(int j = 0; j < 3; j++){
	 		intrin_4.at<double>(i,j) = intrinsics.at<double>(i,j);
	 	}
	 }

	 intrin_4.at<double>(3,3) = 1;
	 return intrin_4;
}

bool get_texture_from_frame(Mat frame, Mat & texture_img, Mat extrinsics, Mat intrin){
//0.027 0.04
	Mat intrinsics_4 = to4by4(intrin);
	Mat translation = translation_mat(-0.04, -0.027);
	Mat camera_matrix = intrinsics_4 * extrinsics;

	Mat zero = (Mat_<double>(4,1) << 0, 0, 0, 1);
	Mat origin = camera_matrix * translation * zero;
	Mat tl = camera_matrix*translation_mat(-0.04, -0.117)*zero;
	Mat tr = camera_matrix*translation_mat(-0.04, -0.027)*zero;
	Mat bl = camera_matrix*translation_mat(0.051, -0.117)*zero;
	Mat br = camera_matrix*translation_mat(0.051, -0.027)*zero;

	texture_img = frame.clone();

 	Point2f src[] = {Point(0,0), Point(512, 0), Point(0, 512), Point(512, 512)};
 	Point2f dest[] = {getPt(tl), getPt(tr), getPt(bl), getPt(br)};
 	Mat H = getPerspectiveTransform(src, dest);
 	Mat warpped(512, 512, CV_8UC3, Scalar(0,0,0));
 	warpPerspective(frame, warpped, H, Size(512, 512),  WARP_INVERSE_MAP);
 	texture_img = warpped;
 
	return true;
}
/*
int main(){
	Mat test_frame = imread("../util/warp_test.jpg", CV_LOAD_IMAGE_COLOR);

	
	float msize = 0.035;

	//OpenCV init Stuff
	//declare tracker and video IO 
	tracker ar_tracker(intrinsics, msize);
	Mat extrinsics = Mat::eye(4, 4, CV_64F);
	bool succ = ar_tracker.track(test_frame, extrinsics);
	cout << extrinsics << endl;
	Mat return_frame;
	get_texture_from_frame(test_frame, return_frame, extrinsics);

	namedWindow( "Display window", WINDOW_AUTOSIZE );
    imshow("Display window", return_frame);  
    waitKey(0);  
}*/