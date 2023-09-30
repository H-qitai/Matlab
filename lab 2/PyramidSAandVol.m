function [PyramidSA, PyramidVol] = PyramidSAandVol(BaseLength,Height)
% PyramidSAandVol calculates the surface area (SA) and volume (Vol) of a
% square pyramid given a base side length and height.
% 
% Inputs: BaseLength: base side length of the Pyramid in m
%         Height: height of the Pyramid in m
% Output: PyramidSA: surface area of the Pyramid in m^2
%         PyramidVol: volume of the Pyramid in m^3
% 
% Author: MZ 2021

% Calculate base area of the pyramid
BaseArea = BaseLength.^2;

% Calculate volume of the pyramid
PyramidVol = (BaseArea .* Height)/3;

% Calculate side length of pyramid with pythagoras
%SideTriangleHeight = sqrt(Height.^2 + BaseLength ./ 2.^2);

% Calculate area of triangular side of the pyramid
%SideTriangleArea = 0.5 * BaseLength.* SideTriangleHeight;

% Calcuate the total pyramid surface area
PyramidSA = BaseArea + BaseLength.*sqrt((BaseLength/2).^2 + Height .^2)+ BaseLength.*sqrt((BaseLength/2).^2 + Height .^2);

end
