function [m] = ImperialToMetric(ft, in)
% MetricToImperial converts a metric measurement (in metres) to an imperial
% measurement (in feet and inches).
%
% Input: m = measurement in metres
% Outputs: ft = number of feet
%          in = number of inches
%
% Author: USA

% Calculate the total number of cms.
m1 = ft/3.281;
m2 = in/39.37;

m = m1 + m2;

end