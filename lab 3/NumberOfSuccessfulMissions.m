function NOSM = NumberOfSuccessfulMissions(y)
% this function determines how many mission are successfull and wil display
% the amount of missions that were successful, failure in the mission will
% result the rest of the mission to fail.
% 
% Author: Tony Huang

% defining variables
NOSM = 0;
Size = size(y);
% Calculates the total length of the input variable/ lists. (1d array only)
% When the operation is sucessful it will loop until it fails.
while NOSM < Size(2)
    NOSM = NOSM + 1;
    result = IsMissionSuccessful(y(NOSM));
    if result == false
        NOSM = NOSM - 1;
        return
    end
end
end