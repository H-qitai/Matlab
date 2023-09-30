%% TestElectricalCircuitCurrent.m
% TestElectricalCircuitCurrent tests the function ElectricalCircuitCurrent.
%
% Author: MZ 2022
clear
clc
close all

% Set initial network parameters.
% V1 = 10; % volts 
% R2 = 3; % ohms
% V3 = 4; % volts
% R4 = 4; % ohms
% R5 = 3; % ohms

% Calling the function ElectricalCircuitCurrent.
% It = ElectricalCircuitCurrent([-10 3 -4 4 3]);

% [i1, i2, i3, i4, i5] = ElectricalCircuitCurrent([2.6 2.25 7.7 2.25 7.3]);


% You may want to display the current obtained, and the expected currents. 

sprintf('i1: %d\n i2: %d\n i3: %d\n i4: %d\n i5: %d\n', It)
