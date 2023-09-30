function [pot_1, pot_2] = FindMatchPositions(fp1, fp2)
% This function detects the hashed value of two finger prints and finds the
% similar value between the two fingerprints. Then two outputs are given,
% first output will be the array index of same value for fingerprint one in
% two. Second input, vice versa. 
% Inputs: fingerprint_1, fingerprint_2 (hashed values)
% Outputs: position_1, position_2 (array index)
% 
% Author: Tony Huang 31/08/22


% Create variabe for values to go into as well as splitting the fingerprint
% and position.
fp1_fp = fp1(1,:);
fp2_fp = fp2(1,:);

fp1_pot = fp1(2,:);
fp2_pot = fp2(2,:);

pot_1 = [];
pot1_fp = [];
pot_2 = [];
pot2_fp = [];

% Using a for loop to determine the length of each finger print and compare
% the value of fingerprint 1 using a new created list with only the finger
% print value. Find the position of same fingerprint value and use that
% value to find the position (position list) value of fingerprint 1.

for i = 1:length(fp2_fp)
    if length(strfind(fp1_fp, fp2_fp(i))) >= 1
        temp = strfind(fp1_fp, fp2_fp(i));
        for j = 1:length(temp)
            pot1_fp(end+1) = temp(j);
        end
        pot_1 = unique(sort(fp1_pot(pot1_fp))); % unique strips duplicate values
    end                                         % sort them in increasing order
end

% Using a for loop to determine the length of each finger print and compare
% the value of fingerprint 2 using a new created list with only the finger
% print value. Find the position of same fingerprint value and use that
% value to find the position (position list) value of fingerprint 2.

for i = 1:length(fp1_fp)
    if length(strfind(fp2_fp, fp1_fp(i))) >= 1
        temp = strfind(fp2_fp, fp1_fp(i));
        for j = 1:length(temp)
            pot2_fp(end+1) = temp(j);
        end
        pot_2 = unique(sort(fp2_pot(pot2_fp)));
    end
end



end