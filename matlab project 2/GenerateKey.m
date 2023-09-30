function [key] = GenerateKey(cell_img, p)
% Assembles a 2D cell array to act as a key, where each array element is 
% a 2x2 uint8 pattern selected at random. The patterns are passed in using 
% a 1D cell array and then randomly assigned to the 2D cell array based on 
% values in a 2D array of random values (that range from 1 to 6 inclusive)
%
% Input: Two inputs in the following order
% 1) A 2D m x n array of random integer values between 1 and 6 inclusive
% 2) A 1x6 1D cell array containing 6 patterns (where each pattern is 
% stored as a 2x2 uint8 array)
%
% A 2D m x n cell array containing patterns to act as a key. Each element 
% of the array will be a pattern stored as a 2x2 array of uint8 values 
% (i.e. a grayscale image), with the pattern selected from the list of 
% patterns based on the corresponding random values contained in the 2D 
% array of random integer values.

Size = size(cell_img);
row = Size(1);
col = Size(2);

for i = 1:row
    for j = 1:col
        if cell_img(i,j) == 1
           key{i,j} = p{1};
        elseif cell_img(i,j) == 2
           key{i,j} = p{2};
       elseif cell_img(i,j) == 3
           key{i,j} = p{3};
       elseif cell_img(i,j) == 4
           key{i,j} = p{4};
       elseif cell_img(i,j) == 5
           key{i,j} = p{5};
        elseif cell_img(i,j) == 6
           key{i,j} = p{6};
        end
    end
end