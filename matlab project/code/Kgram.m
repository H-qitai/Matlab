function cell_s = Kgram(k, string)
% This function sorts the given x length of string and split into k length
% and stored into an cell array. If the length of the k value is longer
% than the string, it will be just a 1x1 cell array.
% E.g. suppoose with the k value of 5
% Input: 'doyouwantto'
% Output: 'doyou' 'oyouw' 'youwa' 'ouwan' 'uwant' 'wantt' 'antto'
% 
% Author: Tony Huang 31/08/22

% define a cell array for the kgram
cell_s = {};

% determines the length of the string, if the string is smaller than k. It
% is then printed into a 1x1 cell array.
% If it is smaller than it will be recalculated using kgram.

if k < length(string)
    for i = 1:length(string)-k+1
        cell_s{i} = string(i:i+k-1);
    end

elseif k >= length(string)
    cell_s{end+1} = string;

end

end