function [smooth_n_times] = SmoothSignal(array_tbs, n)
% This function takes an random x length of array and pass through the
% function SmoothSignalPass n times and returns the value
% Input: (array to be sorted, number of times to be sorted)
% Output: (New smoothed array)
% E.g. new_sorted = SmoothSignal([4 1 12 3 8], 2)
% Output = 4 5 6.25 7 8
% 
% Author: Tony Huang


% define the value of i and make sure the input array is constantly
% updated.
i = 0;
smooth_n_times = array_tbs;

% A while loop that keeps looping until value i reaches n.
while i <= n -1
    smooth_n_times =  SmoothSignalPass(smooth_n_times);
    i = i + 1;
end