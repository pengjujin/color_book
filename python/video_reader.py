#!/usr/bin/env python

import numpy as np
import cv2
import common
import tracker
import warp_image as wp

class App:
	def __init__(self, src, pj_img):
		self.cap = cv2.VideoCapture(src)
		self.frame = None
		self.paused = False
		self.tracker = tracker.PlaneTracker()
		self.pj = pj_img
		self.current_H = None
		self.init_warped_img = None

		cv2.namedWindow('camera')
		self.rect_sel = common.RectSelector('camera', self.on_rect)

	def on_rect(self, rect):
		x0, y0, x1, y1 = rect
		po = np.array([(x0, y0), (x1, y0), (x1,y1), (x0, y1)])
		pt = np.array([(0,0), (338, 0), (338, 251), (0, 251)])
		H, status = cv2.findHomography(pt, po)
		self.current_H = H
		x,y,z = self.frame.shape
		blank_image = np.zeros([y,x,3], dtype=np.uint8)
		self.init_warped_img = wp.warp_image(self.pj, blank_image, H)
		self.tracker.add_target(self.frame, rect)

	def run(self):
		while True:
			playing = not self.paused
			if playing: 
				ret, frame = self.cap.read()
				if not ret:
					break
				self.frame = frame.copy()

			vis = self.frame.copy()

			if playing:
				tracked = self.tracker.track(self.frame)
				for tr in tracked:
					H = tr.H;
					vis = wp.warp_image(self.init_warped_img, vis, H)
					#cv2.polylines(vis, [np.int32(tr.quad)], True, (255,255,255), 2)
					#for (x,y) in np.int32(tr.p1):
					#	cv2.circle(vis, (x,y), 2, (255,255,255))  

			self.rect_sel.draw(vis)
			cv2.imshow('camera', vis)

			ch = cv2.waitKey(1)
			if ch == ord(' '):
				self.paused = not self.paused
			if ch == 27:
				break

if __name__ == '__main__':
	print __doc__
	import sys
	try:
		video_src = sys.argv[1]
	except:
		video_src = 0
	print video_src
	image = cv2.imread('../util/cmu.jpg')
	App(video_src, image).run()
