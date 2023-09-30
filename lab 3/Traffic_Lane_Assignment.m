function [traffic_lanes] = Traffic_Lane_Assignment(time, crash_lanes)
% Traffic_Lane_Assignment identifies the direction (northbound indicated
% with a 1, and southbound indicated with a -1) of traffic flow in lanes on
% Auckland Harbour bridge. Depending on the time of day, if it is peak
% traffic time, more lanes are required in certain directions than others.
% In morning peaks, more southbound lanes (5) are required, and in evening
% peaks, more northbound lanes (3) are required. Any crashes that occur in
% the lanes means that traffic cannot flow in that lane (indicated with a
% 0).
%
% Input: time, a number between 0 and 24 indicating the hour and minute as
%              a decimal value. e.g. 3 would be 3am, and 3.5 would be
%              3:30am.
%        crash_lanes, a 1 by 8 array of numbers, with each element
%              (representing bridge lanes) having a 1 if there is a crash 
%              in that lane, otherwise it will be a zero.
% Output: traffic_lanes, a 1 by 8 array of numbers indicating the traffic 
%              flow in each lane. We assume that the left side of the array
%              represent northbound traffic and the right side represent
%              the southbound traffic.
%
% Example: with a time of 12:30pm as 12.5 (which is not peak traffic) and
% one crash in lane 7 of a 8 lane brdige as [0 0 0 0 0 0 1 0], we would
% expect traffic lane assignment to be [1 1 1 1 -1 -1 0 -1]. That is, 4
% northbound (+1) lanes from the left, 4-1=3 southbound (-1) lanes from the
% right, with lane 7 closed with no traffic.
%
% Example: with a time of 17:30pm as 17.5 (which is peak traffic) and no
% crashes in a 8 lane brdige as [0 0 0 0 0 0 0 0], we would expect traffic
% lane assignment to be [1 1 1 1 1 -1 -1 -1]. That is, 5 northbound (+1)
% lanes from the left, 3 southbound (-1) lanes from the right.
%
% Example: with a time of 9:00am as 9 (which is peak traffic) and one crash
% in lane 3 in a 8 lane brdige as [0 0 1 0 0 0 0 0], we would expect
% traffic lane assignment to be [1 1 0 -1 -1 -1 -1 -1]. That is, 3-1=2
% northbound (+1) lanes from the left, 5 southbound (-1) lanes from the
% right.
%
% Author: MZ 2021


% Number of lanes on the bridge.
n = 8;

% Initialise the output array.
traffic_lanes = zeros(1,n);

% Setting the number of lanes needed in the northern direction depending on
% the time of day.
if (7 <= time && time <= 10)
    % if the time is between 7 (7am) and 10 (10am) inclusive in the
    % morning, set peak_time (morning peak) to true and the decreased
    % number of northbound lanes from 4 to 3.
    north_lanes_needed = 3;
elseif (time >= 15 && time <= 19)
    % if the time is between 15 (3pm) and 19 (7pm) inclusive in the
    % evening, set peak_time (evening peak) to true and the increased
    % number of northbound lanes from 4 to 5.
    north_lanes_needed = 5;
else
    % otherwise when it is not peak time, we want to split the north/south
    % lanes into 4 each.
    north_lanes_needed = 4;
end

% Going through each lane and assigning the correct flag to each lane
for i = 1:north_lanes_needed
    traffic_lanes(i) = 1;
end

for i = (north_lanes_needed +1 ):n
    traffic_lanes(i) = -1;
end

for i = 1:n
    if crash_lanes(i) == 1
        traffic_lanes(i) = 0;
    end
end

end

