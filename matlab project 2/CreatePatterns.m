function [patterns] = CreatePatterns()
% Creates a 1D cell array containing six special 2x2 patterns of uint8 
% values, these patterns will be used for key generation.
% Input: None
% Output: A single 1 x 6 cell array of patterns. It will contain the 
% following six 2x2 patterns (in this order): 
% bottom 2 black, top 2 black, left 2 black, right 2 black, 
% leading diagonal black, off diagonal black
%Each pattern will be stored as a 2x2 uint8 value array 
%
% Author: Tony Huang


Cell = cell(1,6);

temp1 = [255,255;
        0,0];

temp2 = [0,0;
        255,255];

temp3 = [0,255;
        0,255];

temp4 = [255,0;
        255,0];

temp5 = [0,255;
        255,0];

temp6 = [255,0;
        0,255];


for i = 1:6
    if i == 1
        Cell{i} = uint8(temp1);
    elseif i == 2
        Cell{i} = uint8(temp2);
    elseif i == 3
        Cell{i} = uint8(temp3);
    elseif i == 4
        Cell{i} = uint8(temp4);
    elseif i == 5
        Cell{i} = uint8(temp5);
    elseif i == 6
        Cell{i} = uint8(temp6);
    end

end

patterns = Cell;