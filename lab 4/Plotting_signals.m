% Plotting_signals.m
% This script plots the data of signal.mat
% Figure one shows the smoothed and unsmoothed overlapping in one plot
% Figure two shows 3 plots, unprocessed, proccessed once, proccessed 100x

% Clears the workspace and command window
clear,clc
% Load the data
load signal.mat

% %-----------------------------------------------------------------------
% Figure one

% hold on to both plots and make it figure one
figure
hold on

% plots the unproccessed graph
plot(t, y, 'g')

% proccess the data using SmoothSignal function and plot the graph
smoothed_t_100 = SmoothSignal(t, 100);
smoothed_y_100 = SmoothSignal(y, 100);
plot(smoothed_t_100, smoothed_y_100, ':r')

% graph configuration for easier understanding
title('Plot of unprocessed and processed signals')
legend('unprocessed signal', 'processed signal')
xlabel('times(s)')
ylabel('signal strength')

%-----------------------------------------------------------------------
% Figure two


% hold on to all three plots and make it figure two
figure
hold on

% Define the size and position of the first plot
subplot(1,3,1)

% Plot the first plot and its configuration
plot(t, y, 'k')
title('Plot of unproccessed signal','FontSize', 8)
xlabel('times(s)')
ylabel('signal strength')

% Define the size and position of the second plot
subplot(1,3,2)

% smooth the values for second plot using SignalPass function
smoothed_t_1 = SmoothSignal(t, 1);
smoothed_y_1 = SmoothSignal(y, 1);

% Plot the second plot and its configuration
plot(smoothed_t_1, smoothed_y_1, 'k')
title('Plot of processed signal (1 pass)', 'FontSize', 7.25)
xlabel('times(s)')
ylabel('signal strength')

% Define the size and position of the third plot
subplot(1,3,3)

% smooth the values for third plot using SignalPass function
smoothed_t_100 = SmoothSignal(t, 100);
smoothed_y_100 = SmoothSignal(y, 100);

% Plot the third plot and its configuration
plot(smoothed_t_100, smoothed_y_100, 'k')
title('Plot of processed signal (100 pass)','FontSize', 7.25)
xlabel('times(s)')
ylabel('signal strength')