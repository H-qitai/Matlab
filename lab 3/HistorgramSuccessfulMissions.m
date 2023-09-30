% HistorgramSuccessfulMissions.m is a script, it'll diplay a histogram of x
% amount of tries. This script calls the function that was wrote previously
% in task 3.2 and 3.3.
% 
% Author: Tony Huang

% clears the workspace and empty the command window
clear
clc

% attemps is the number of simulation to be tested
% Size is the number of tries per simulation
% Could potentially siwtch to using input for user to enter the testing
% values.

%attemps = input('Enter the amount of simulation for this experiment: ');
%Size = input('Enter the amount of tries per simulation: ');
attemps = 500;
Size = 1000;

% creates an empty list for the variables to go in
data = [];

% Generate x amount of attemps and each attemp is randomised and calls and 
% calculate using the function 'NumberOfSuccessfulMissions'
for i = 1:attemps
    x = 100 * rand(attemps, Size);
     data(end + 1) = NumberOfSuccessfulMissions(x);
end

% Calls the histogram function
SuccessfulMissionHistogram(data)