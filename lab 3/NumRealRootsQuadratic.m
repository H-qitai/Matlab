function n = NumRealRootsQuadratic(a,b,c)
% This function determines whether or not a quadratic equation have a real
% root. User requires to input; a (x^2 value), b(x value), and c(c value).
% The Function will calculate the amount of roots and tell the user.
% 
% Author: Tony Huang

% Calculates the discriminant and stored as x
x = sqrt((b^2) - (4*a*c));

% Check the value of discriminant and display the correctsponding value
% Checks which condition does x meet
 if x >= 1
    n = 2;
 elseif x == 0
    n = 1;
 else
     n = 0;
end