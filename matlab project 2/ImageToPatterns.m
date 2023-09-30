function [pattern] = ImageToPatterns(image)
% Convert an image back into a cell array of 2x2 uint8 patterns so that 
% we can more easily work with the patterns
%
% Inputs: A 2D array of uint8 values (i.e. a grayscale image) containing 
% an image made up of lots of black and white pixels
%
% Outputs: A 2D cell array of 2x2 patterns extracted from the image. 
% Each element of the array will be a pattern stored as a 2x2 array of 
% uint8 values (i.e. a grayscale image)
%
% Author: Tony Huang

Size = size(image);
row = Size(1);
col = Size(2);
row_2 = Size(1)/2;
col_2 = Size(2)/2;
z = 1;

for x = 1:2:row-1
    for y = 1:2:col-1
        mem{z} = [image(x,y), image(x,y+1);image(x+1,y), image(x+1,y+1)];
        z = z + 1;
    end
end

pattern_flip = reshape(mem, col_2, row_2);
pattern = pattern_flip';
