% Calculates the sprig compression and energy
% input: Newton, Spring constant
% output: compression, joules
% Author: Tony Huang
% Version one
function [x, Kj] = CalcSpringCompAndEnergy(N, k)
    %Calculates compression in meters
    x = N./k;
    %calculate the energy in kilojoules
    Kj = (0.5 * k.* x.^2);
end