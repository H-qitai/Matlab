function dvdt = SledAnalyticSolution(t, v0)
% The function SledAnalyticSolution calculates an input of array in t and
% times the initial velocity v0 and gives the calulated v value.
% 
% Author: Tony Huang 28/08/22

% Calculates v
dvdt = v0* exp(-500/1000*t);

end