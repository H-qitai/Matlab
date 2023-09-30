clear, clc
% This script calculates the increasing accuracy of the value pi.
% 
% Author: Tony Huang 28/0/22

% Value of n, input is commented out for publish purposes.
n = 10;
% n = input('Enter the number of iterations: ');

% Define variables, value given.
a = [0;1;0];
b = [1;0;0];

% A for loop to loop through each iteration.
for i = 1:n

b1 = 0.5 * (a + b); % Vector calculation in code form.

b = b1/norm(b1);

pi_approx = (2^(i+1) * norm(cross(a,b)));

% Displays the value nicely.
approx = sprintf('Value of pi for iteration %d is: %f.', i, pi_approx);
disp(approx)

end

