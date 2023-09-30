function [t, cal_v] = SledNumericalSolutionOde45(t1, v0)
% This function calculates the numerical solution to the sled. Using ODE.
% Input: t(array), v0
% Ouput: t, calulated velocity
% 
% Author: Tony Huang 28/08/22

% Calculate value of t, cal_v


[t, cal_v] = ode45(@SledVelocityDerivative, t1, v0);



end