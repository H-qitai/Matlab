function hashed_array = HashList(cell_a)
% Calculates the hash31 value for every string stored in a cell array to 
% generate a sequence of hashed values (which will be integers). It is
% hashed using Hash31.
% Input: hashes = HashList({'doyou', 'oyouw', 'youwa', 'ouwan', 'uwant',
% 'wanto'})
% Output: 358324 319783 874281 207678 544773 700511
% 
% Author: Tony Huang 31/08/22

% Creates a variable for hashed values to go in.
hashed_array = [];

% A loop that take each 1xi input cell_array and uses the function Hash31
% to hash the value. Then it is stored in the vew array.
for i = 1:length(cell_a)
    hashed_array(end + 1) = Hash31(cell_a{i});
end

end