#!/usr/bin/env python

import numpy as np
import cv2

from collections import namedtuple

import common

FLANN_INDEX_KDTREE = 1
FLANN_INDEX_LSH = 6
flann_params = dict(algorithm = FLANN_INDEX_LSH, 
					table = 6,
					key_size = 12,
					multi_probe_level = 1)

MIN_MATCH_COUNT = 10

'''
	image: image to track
	rect: tracked rectangel
	keypoints: detected keypoints
	descrs: feature descriptiors
	data: other user data
'''

PlanarTarget = namedtuple('PlaneTarget', 'image, rect, keypoints, descrs, data')
TrackedTarget = namedtuple('TrackedTarget', 'target, p0, p1, H, quad')

class PlaneTracker:
	def __init__(self):
		self.detector = cv2.ORB(nfeatures = 9000)
		self.matcher = cv2.FlannBasedMatcher(flann_params, {})
		self.targets = []

	def add_target(self, image, rect, data=None):
		x0, y0, x1, y1 = rect
		raw_points, raw_descrs = self.detect_features(image)
		points, descs = [], []

		for kp, desc in zip(raw_points, raw_descrs):
			x, y = kp.pt 
			if x0 <= x <= x1 and y0 <= y <= y1:
				points.append(kp)
				descs.append(desc)

		descs = np.uint8(descs)
		self.matcher.add([descs])
		target = PlanarTarget(image = image, rect = rect, keypoints = points, descrs= descs, data=None)
		self.targets.append(target)

	def detect_features(self, frame):
		keypoints, descrs = self.detector.detectAndCompute(frame, None)
		if descrs is None:
			descrs = []
		return keypoints, descrs

	def track(self, frame):
		self.frame_points, self.frame_descrs = self.detect_features(frame)
		if len(self.frame_points) < MIN_MATCH_COUNT:
			return []
		matches = self.matcher.knnMatch(self.frame_descrs, k = 2)
		matches = [m[0] for m in matches if len(m) == 2 and m[0].distance < m[1].distance*0.75]
		if len(matches) < MIN_MATCH_COUNT:
			return []
		matches_by_id = [[] for _ in xrange(len(self.targets))]
		for m in matches:
			matches_by_id[m.imgIdx].append(m)
		tracked = []
		for imgIdx, matches in enumerate(matches_by_id):
			if len(matches) < MIN_MATCH_COUNT:
				continue
			target = self.targets[imgIdx]
			p0 = [target.keypoints[m.trainIdx].pt for m in matches]
			p1 = [self.frame_points[m.queryIdx].pt for m in matches]
			p0, p1 = np.float32((p0, p1))
			H, status = cv2.findHomography(p0, p1, cv2.RANSAC, 3.0)
			if(status is not None):
				status = status.ravel() != 0
				if status.sum() < MIN_MATCH_COUNT:
					continue
				p0, p1 = p0[status], p1[status]
				
				x0, y0, x1, y1 = target.rect
				quad = np.float32([[x0, y0], [x1, y0], [x1, y1], [x0, y1]])
				quad = cv2.perspectiveTransform(quad.reshape(1, -1, 2), H).reshape(-1, 2)

				track = TrackedTarget(target=target, p0=p0, p1=p1, H=H, quad=quad)
				tracked.append(track)
			
		tracked.sort(key = lambda t: len(t.p0), reverse=True)
		return tracked
