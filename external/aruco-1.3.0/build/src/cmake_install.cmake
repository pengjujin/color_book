# Install script for directory: /home/pengju/15-463/final_proj/external/aruco-1.3.0/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "main")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.so.1.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.so.1.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src/libaruco.so.1.3.0"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src/libaruco.so.1.3"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/build/src/libaruco.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.so.1.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.so.1.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "main")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "main")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aruco" TYPE FILE FILES
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/chromaticmask.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/aruco.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/markerdetector.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/subpixelcorner.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/highlyreliablemarkers.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/arucofidmarkers.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/board.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/boarddetector.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/exports.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/cameraparameters.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/marker.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/ar_omp.h"
    "/home/pengju/15-463/final_proj/external/aruco-1.3.0/src/cvdrawingutils.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "main")

