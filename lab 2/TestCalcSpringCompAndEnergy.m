% TestCalcSpringCompAndEnergy.m
% TestCalcSpringCompAndEnergy.m tests the function CalcSpringCompAndEnergy,
% displays the function output and displays the expected value. 
%
% Author: Tony Huang

% Clears the workspace and command windows
clear;
clc;

% test 1
% Calls the function
[x1, Kj1] = CalcSpringCompAndEnergy(11, 1000);

% Displays the values calculated by the function
disp("The compression in meters is: " + num2str(x1))
disp("The energy in Kilojoules is: "+ num2str(Kj1))

% Display the value calculated by hand
disp("The expected value in test one should be compression: 0.011, Kilojoules: 0.0605")

% Make the values clearer to see
disp('---------------------------------------------')

% test 2
% Calls the function
[x2, Kj2] = CalcSpringCompAndEnergy(7, 800);

% Displays the values calculated by the function
disp("The compression in meters is: " + num2str(x2))
disp("The energy in Kilojoules is: "+ num2str(Kj2))

% Display the value calculated by hand
disp("The expected value in test two should be compression: 0.00875, Kilojoules: 0.030625")

% Make the values clearer to see
disp('---------------------------------------------')

% test 3
[x3, Kj3] = CalcSpringCompAndEnergy(8, 900);

% Displays the values calculated by the function
disp("The compression in meters is: " + num2str(x3))
disp("The energy in Kilojoules is: "+ num2str(Kj3))

% Display the value calculated by hand
disp("The expected value in test three should be compression: 0.0088889, Kilojoules: 0.035556")
