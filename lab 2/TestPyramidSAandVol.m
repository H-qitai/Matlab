%% TestPyramidSAandVol.m
% TestPyramidSAandVol tests the function PyramidSAandVol.
clear
clc
close all

%% Test 1
[SA1, Vol1] = PyramidSAandVol(6,9);
disp(SA1)
disp(Vol1)

% Calculate by hand the expected values and compare
expectedSA1 = 149.842;
expectedVol1 = 108;
disp(expectedSA1)
disp(expectedVol1)

%% Test 2
[SA2, Vol2] = PyramidSAandVol([2 3],[4 5]);
disp(SA2)
disp(Vol2)

% Calculate by hand (or an online calculator) the expected values and
% compare.
% expectedSA2 = ;
% expectedVol2 = ;
% disp(expectedSA1)
% disp(expectedVol1)

%% Test 3
% Highly recommended that you create more tests and thoroughly test the
% function.



%% Test 4


