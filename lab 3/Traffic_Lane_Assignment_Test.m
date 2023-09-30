%% Traffic_Lane_Assignment_Test.m
% Traffic_Lane_Assignment_Test tests the function Traffic_Lane_Assignment.
clear
clc
close all

%% Test 1
crash_lanes_1 = [0 0 0 0 0 0 1 0];
time_1 = 17.5;
traffic_lanes_1 = Traffic_Lane_Assignment(time_1, crash_lanes_1);


expected_traffic_lanes_1 = [1,1,1,1,1,-1,0,-1];
disp(traffic_lanes_1)
disp(expected_traffic_lanes_1)

% %% Test 2
% crash_lanes_2 = [0 0 0 0 0 0 0 0];
% time_2 = 0;
% traffic_lanes_2 = Traffic_Lane_Assignment(time_2, crash_lanes_2);
% 
% % Calculate by hand the expected values and compare.
% expected_traffic_lanes_2 = "???";
% disp(traffic_lanes_2)
% disp(expected_traffic_lanes_2)

%% Test 3
% Highly recommended that you create more tests and thoroughly test the
% function.

%% Test 4
