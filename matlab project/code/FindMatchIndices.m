function indices = FindMatchIndices(a1,a2)
% This function compares two array and determines whether or not array 1
% have same value as array 2. Then the index position of array 1 will be
% returned if array 1 x value have the same value as array 2.
% Input: two one d arrays (maybe two d)
% Ouput: an one d array of same value for array 1
% 
% Author: Tony Huang 31/08/22

% Create a list for variables to go in
indices = [];

% Finds the same value using strfind and get the index position of array 1.

for i = 1:length(a2)
    if length(strfind(a1, a2(i))) >= 1
        temp = strfind(a1, a2(i));
        for j = 1:length(temp)
            indices(end+1) = temp(j);
        end
    end
end

% Sort indices in an increasing order and remove duplicates value
indices = sort(unique(indices));

% When the no match is found, the array is changed to 0x0, as sort, unique
% function changes the indices to a 0x1 array.....

if length(indices) == 0
    indices = []
end

end