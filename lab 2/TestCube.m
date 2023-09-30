%% TestCube.m
% TestCube.m tests the function Cube, displays the output and displays the
% expected value.
%
% Author: MZ 2021
clear;

%% Test 1
cubedvalue1 = Cube(3);
disp(['Cube(3) returned: ' num2str(cubedvalue1)])
disp('Expected value: 27')

%% Test 2
cubedvalue2 = Cube(-1.5);
disp(['Cube(-1.5) returned: ' num2str(cubedvalue2)])
disp('Expected value: -3.375')

%% Test 3
cubedvalue3 = Cube([2 0 5.3 -9]);
disp(['Cube([2 0 5.3 -9]) returned: ' num2str(cubedvalue3)])
disp('Expected value: 8, 0, 148.877, -729')

%% Test 4
% It is a good idea to create more tests of your own below.
