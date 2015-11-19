#!/usr/bin/env python

import numpy as np
import cv2


def warp_image(src_img, target_img, H):
	x,y,z = target_img.shape
	warped = cv2.warpPerspective(src_img, H, (y,x))
	gray = cv2.cvtColor(warped, cv2.COLOR_BGR2GRAY)
	ret, mask = cv2.threshold(gray, 10, 255, cv2.THRESH_BINARY)
	mask_inv = cv2.bitwise_not(mask)
	target_masked = cv2.bitwise_and(target_img, target_img, mask = mask_inv)

	final = cv2.add(warped, target_masked)
	return final


if __name__ == '__main__':
	src_image = cv2.imread('../util/cmu.jpg')
	target_image = cv2.imread('../util/notebook.jpg')
	x0 = 177 
	y0 = 390
	x1 = 692
	y1 = 469
	p0 = (x0, y0)
	p1 = (x1, y0)
	p2 = (x1, y1)
	p3 = (x0, y1)
	po = np.array([p0, p1, p2, p3])
	pt = np.array([(0,0), (338, 0), (338, 251), (0, 251)])
	H, status = cv2.findHomography(pt, po)
	print(H)
	warp_image(src_image, target_image, H)
