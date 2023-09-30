function [index] = TernarySearchArray(val, array)
% This function is called TernarySearchArray, which will search the array
% and find the entered value. If the value is found it will return the 
% index position of the value in the array. if the value is not found it will
% return -1. The array cannot have duplicate value and has to be in
% ascending order.
% 
% Input: value and an one d array.
% 
% Output: Index Position
% 
% Author: Tony Huang

position = strfind(array, val);
if position ~= 0
    index = position;
else
    index = -1;
end
