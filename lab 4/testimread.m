clear,clc

test_RGB = imread('10.png');
bluefiltered = FilterImage(test_RGB);
imshow(bluefiltered)
% image(xray_RGB)
% axis equal
