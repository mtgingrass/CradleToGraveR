---
title: Hough Transform and Line Detection with Python
author: mtgingrass
type: post
date: 2019-06-28T16:54:36+00:00
url: /2019/06/28/hough-transform-and-line-detection-with-python/
featured_image: http://markgingrass.com/wp-content/uploads/2019/06/Hough-Transform.png
categories:
  - Math
  - More
  - Programming
  - Python
tags:
  - blur
  - canny
  - edge
  - gaussian
  - gray scale
  - hough
  - hough transform
  - lane detection
  - line detection
  - transform
  - udacity

---
## Introduction to Hough Transform

Taking a Udacity course on Self Driving Cars and came across the Hough Transform. This helps determine the most likely values to find a straight line. First we have to gray scale the image, then apply a Gaussian Blur, detect edges with the Canny Edge detection algorithm and finally detect straight lines. When you implement this with Python and OpenCV, this explanation will help out.

## Steps Abstract

  1. Gray Scale
  2. Gaussian Blur
  3. Canny Algorithm
  4. Line Detection

Video Tutorial

[embedyt]https://youtu.be/G019Av7XhGo[embedyt]