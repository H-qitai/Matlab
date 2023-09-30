function [maxSS] = GetMaxShearStress(strainMatrix, complianceMatrix, angle)
%GETMAXSHEARSTRESS Calculates max shear stress for a given fibre angle.
%
% INPUTS: strainMatrix = a 2x2 matrix containing normal and shear strains
%         complianceMatrix = a 3x3 matrix containing normal and shear moduli
%         angle = a scalar denoting fibre orientation (in radians)
%
% OUTPUT: maxSS = the maximum shear stress occurring in the material

% Transform the strains into the fibre axis co-ordinates.
q = [cos(angle), sin(angle); -sin(angle), cos(angle)];
strainMatrixT = (q)*strainMatrix*(q');
strainVectorT = [strainMatrixT(1, 1); strainMatrixT(2, 2); strainMatrixT(1, 2)];

% Find the stresses in the fibre axis co-ordinates.
stressVectorT = complianceMatrix\strainVectorT;

% Find principle stresses, and then maximum shear stress.
sP1 = 0.5*(stressVectorT(1) + stressVectorT(2)) + ...
    sqrt(0.25*(stressVectorT(1) - stressVectorT(2))^2 + stressVectorT(3)^2);
sP2 = 0.5*(stressVectorT(1) + stressVectorT(2)) - ...
    sqrt(0.25*(stressVectorT(1) - stressVectorT(2))^2 + stressVectorT(3)^2);
maxSS = 0.5*abs(sP1 - sP2);

return

