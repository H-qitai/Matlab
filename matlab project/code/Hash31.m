function h = Hash31(array)
% This function requires user to input an one d array, which will be
% converted to a hashed integers value.
% Input: '[1 2 3]'
% Output: '1026'
% 
% Author: Tony Huang 31/08/22

% Turns a charactor to ascii form and define h
ascii_a = array + 0;
h = 0;

% A for loop that loops through each iteration
% Calculates the remainder after dividing by hash size.
for i = 1:length(ascii_a)
    h = ascii_a(i) + 31*h;
    h =  mod(h,2^20);
end

end