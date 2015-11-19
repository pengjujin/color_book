# ===================================================================================
#  aruco CMake configuration file
#
#             ** File generated automatically, do not modify **
#
#  Usage from an external project:
#    In your CMakeLists.txt, add these lines:
#
#    FIND_PACKAGE(aruco REQUIRED )
#    TARGET_LINK_LIBRARIES(MY_TARGET_NAME )
#
#    This file will define the following variables:
#      - aruco_LIBS          : The list of libraries to links against.
#      - aruco_LIB_DIR       : The directory where lib files are. Calling LINK_DIRECTORIES
#                                with this path is NOT needed.
#      - aruco_VERSION       : The  version of this PROJECT_NAME build. Example: "1.2.0"
#      - aruco_VERSION_MAJOR : Major version part of VERSION. Example: "1"
#      - aruco_VERSION_MINOR : Minor version part of VERSION. Example: "2"
#      - aruco_VERSION_PATCH : Patch version part of VERSION. Example: "0"
#
# ===================================================================================
INCLUDE_DIRECTORIES("/usr/local/include")
SET(aruco_INCLUDE_DIRS "/usr/local/include")

LINK_DIRECTORIES("/usr/local/lib")
SET(aruco_LIB_DIR "/usr/local/lib")

SET(aruco_LIBS opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video;opencv_legacy;opencv_objdetect;opencv_photo;opencv_gpu;opencv_videostab;opencv_ts;opencv_ocl;opencv_superres;opencv_nonfree;opencv_stitching;opencv_contrib aruco)

SET(aruco_FOUND 1)
SET(aruco_VERSION        1.3.0)
SET(aruco_VERSION_MAJOR  1)
SET(aruco_VERSION_MINOR  3)
SET(aruco_VERSION_PATCH  0)
