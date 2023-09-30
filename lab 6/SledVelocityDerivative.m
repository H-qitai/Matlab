function [dvdt] = SledVelocityDerivative(t,v)
% This function calculates the derivative dydt.
% input: time, velocity
% output: dvdt
% 
% Author: Tony Huang

% Calculates dvdt
dvdt = (v * -500)/1000;


end