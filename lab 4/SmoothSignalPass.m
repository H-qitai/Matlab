function smooth_array = SmoothSignalPass(dots)
% This function will take an input of arrays and sort them into a smoother
% version of values for signals
% 
% Author: Tony Huang

% Create a list and store the calling values in the list
points = dots;
smooth_array = [];

% add the first value of the unsmoothed list value into smoothed list
smooth_array(end + 1) = points(1);

% Call the ThreePointSmooth function and calculate the points in a one d
% array with x length.
for i = 1:length(points)-2
    smooth_array(i + 1) = ThreePointSmooth([points(i), points(i+1), points(i+2)]);
end

% add the end of the value of the original list to the smooth list.
smooth_array(end + 1) = points(end);
end