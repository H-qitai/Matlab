%% PlotSurfaces.m
% PlotSurfaces plots two different interesting surfaces f(x,y) using two
% different methods for creating a surface: nested for loops and meshgrid.
%
% Author: MZ
close all;
clear
clc

%% Creating the plot points
% Number of intervals for each direction.
n = 100;

% Plot points.
% insert n in to make it easier to change invervals for each direction.
x = linspace(-1, 1, n);
y = linspace(-2, 2, n);


% Surface using method 1.
% Changing the variable X and Y, renaming it so matlab dont break and
% easier to identify the values.
for i = 1:length(x)
    for j = 1:length(y)
        X_nested(j, i) = x(j); %#ok<SAGROW> 
        Y_nested(j, i) = y(i); %#ok<SAGROW> 
    end
end

% Added dot operator to each multiplication, division, and power to make
% sure it can multiply arrays.
Z_nested = 1./(exp((5.*X_nested).^2).*((5.*Y_nested).^2));

% Surface using method 2.
% added dot operators and changed wrong input in line 36
[X_mesh, Y_mesh] = meshgrid(x, y);
Z_mesh = Y_mesh.*sin(X_mesh.*5) - X_mesh.*cos(Y_mesh.*5);

% Plotting

% Create a figure object.
figure

% Create a subplot with 2 columns.
% For the left subplot, plot the surface created with the nested for loops.
% Changed the variable names so that the nested and meshgrid is differen to
% each other so matlab does not break.
subplot(1, 2, 1)
surf(X_nested, Y_nested, Z_nested)
title('1/exp((5*x)^2*(5*y)^2); nested for loops');
xlabel('x')
ylabel('y');

% For the right subplot, plot the surface created with mesh grid.
subplot(1, 2, 2)
surf(X_mesh, Y_mesh, Z_mesh)
title('y*sin(5*x) - x*cos(5*y); meshgrid');
xlabel('x')
ylabel('y');
