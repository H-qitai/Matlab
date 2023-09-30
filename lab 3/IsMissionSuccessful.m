function IMS = IsMissionSuccessful(x)
% This function tests the chances of operation with a failure chance of 1%.
% When the user enters a number and if it falls between 0 and 1 percent the
% mission is deemed to be a failure.
% 
% Author: Tony Huang

% decides if random number is in range or not
% if x is less than or equal to one the mission is sucessful
if (x <= 1)
    IMS = false;
else
    IMS = true;
end

