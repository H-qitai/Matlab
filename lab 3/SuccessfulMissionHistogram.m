function [] = SuccessfulMissionHistogram(successful_missions)
% SuccessfulMissionHistogram plots a labeled histogram given the sucessful
% missions as an input array
% 
% Inputs: Array of successful missions.
%
% Author: MZ 2022

figure
% use "help histogram" to understand what the function histogram (and what
% the various inputs do).
histogram(successful_missions,'BinWidth', 10,...
    'BinLimits',[-0.5,ceil(max(successful_missions)/10)*10-0.5])
ylabel("Frequency");
xlabel("Successful Missions Before Failure");
end

