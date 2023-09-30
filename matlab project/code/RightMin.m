function [m, pos] = RightMin(array)
% Finds the value and position of the rightmost minimum in an array of
% values.
% Input: A 1D array of values (the array must contain at least one value)
% Output: The minimum value and the rightmost position of that minimum
% 
% Author: Tony Huang 31/08/22


% Finds the lowest possible value of the input array from left to right.
[m, pos] = min(array);

% find all of the lowest value in input array and store it as memory.
mem = find(array == m);

% If there were 2 or more lowest values, it will take the most end value of
% mem. (mem has all of the lowest value position in input array)
if length(array) >= 2
    pos = mem(end);
end

end