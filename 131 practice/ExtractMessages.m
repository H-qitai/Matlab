function [keyval] = ExtractMessages(rgbimg)
% ExtractMessages will extract the 3 messages hidden in the layers of an RGB colour image
% Input: an RGB colour image, passed in as a 3D array of uint8 values
% Output: a 1x3 cell array where each element of the cell array is a string
% The message hidden in the red layer will be stored in the 1st element of the cell array
% The message hidden in the green layer will be stored in the 2nd element of the cell array
% The message hidden in the blue layer will be stored in the 3rd element of the cell array
% 
% Author: Tony Huang

Size = size(rgbimg);
row = Size(1);
col = Size(2);


for k = 1:3
    tempa = [];
    for i = 1:row
        temp = 0;
        for j = 1:col
            x = rgbimg(i,j,k);
            if mod(x, 2) == 1
                temp = temp + 1;
            end
        end
        tempa(end+1) = temp;
    end
    keyval{k} = char(tempa);
end