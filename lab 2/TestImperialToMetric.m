%% TestImperialToMetric.m
% TestImperialToMetric.m tests the function ImperialToMetric, displays the
% function output and displays the expected value. 
%
% Author: MZ 2021
clear;
clc;

%% Test 1
meters1 = ImperialToMetric(6,6.7402);
disp(['ImperialToMetric returned: ' num2str(meters1)])
disp('Expected value (m): 2')

%% Test 2
meters2 = ImperialToMetric(2, 7);
disp(['ImperialToMetric returned: ' num2str(meters2)])
disp('Expected value (m): ...')

%% Test 3
meters3 = ImperialToMetric(3, 1.41);
disp(['ImperialToMetric returned: ' num2str(meters3)])
disp('Expected value (m): ...')

%% Test 4
% It is a good idea to create more tests of your own below.
