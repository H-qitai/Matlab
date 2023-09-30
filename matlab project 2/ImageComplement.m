function [flipped] = ImageComplement(tbf)
% This function takes in a 2d image and flips the color of it. using the
% formula of 255 - original pixel color.
%
% Author: Tony Huang

% Create variables for the dimension
Size = size(tbf);
row = Size(1);
col = Size(2);


% A for loop that flips the colors.
for i = 1:row
    for j = 1:col
        flipped(i,j) = 255 - tbf(i,j);
    end
end