#ifndef TEXTURE_MODEL_UTIL_H
#define TEXTURE_MODEL_UTIL_H

#include "opencv2/opencv.hpp"

using namespace cv;
using namespace std;

Mat translation_mat(double x, double y);

Point getPt(Mat hom_vec);

Mat to4by4(Mat intrinsics);

bool get_texture_from_frame(Mat frame, Mat & texture_img, Mat extrinsics, Mat intrin);


#endif