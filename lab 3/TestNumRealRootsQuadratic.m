%% TestNumRealRootsQuadratic.m
% TestNumRealRootsQuadratic tests the function NumRealRootsQuadratic.
%
% Author: MZ 2021
close all;
clear;
clc;

disp('Finding the number of roots for ax^2 + bx + c = 0')
disp('*******************');

%% Test 1
a1 = 1;
b1 = 3;
c1 = 2;

expectedN1 = 2;
outputN1 = NumRealRootsQuadratic(a1, b1, c1);

disp(['TESTING call of NumRealRootsQuadratic(' num2str(a1) ', ' num2str(b1) ', ' num2str(c1) ')']);
disp(['   Expected output value is ' num2str(expectedN1)]);
if isequal(outputN1,expectedN1)
    disp('   Test PASSED');
else
    disp('   Test FAILED');
end
disp('*******************');

%% Test 2
a2 = 3;
b2 = 1;
c2 = 2;

expectedN2 = 0;
outputN2 = NumRealRootsQuadratic(a2, b2, c2);

disp(['TESTING call of NumRealRootsQuadratic(' num2str(a2) ', ' num2str(b2) ', ' num2str(c2) ')']);
disp(['   Expected output value is ' num2str(expectedN2)]);
if isequal(outputN2,expectedN2)
    disp('   Test PASSED');
else
    disp('   Test FAILED');
end
disp('*******************');

%% Test 3
a3 = 1;
b3 = 4;
c3 = 4;

expectedN3 = 1;
outputN3 = NumRealRootsQuadratic(a3, b3, c3);

disp(['TESTING call of NumRealRootsQuadratic(' num2str(a3) ', ' num2str(b3) ', ' num2str(c3) ')']);
disp(['   Expected output value is ' num2str(expectedN3)]);
if isequal(outputN3,expectedN3)
    disp('   Test PASSED');
else
    disp('   Test FAILED');
end
disp('*******************');

%% Test 4
% You may want to add more tests to cover a more varied set of values.
