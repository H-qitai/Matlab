function window = Window(w, array)
% Takes a sequence of integer values and creates a 2D array of windows for
% a specified window size w.
% Input: 4, [3 1 4 1 5 9 2 6 5]
% Output: [3     1     4     1
%          1     4     1     5
%          4     1     5     9
%          1     5     9     2
%          5     9     2     6
%          9     2     6     5]
% 
% Author: Tony Huang 31/08/22



% create a list for values to go in
window_long = [];

% Determine whether or not window size is greater than length of the array.
% If the window size is bigger, the original array is printed instead.
if w < length(array)

% A for loop that converts the original array value into a long strip of 2d
% window value.
    for i = 1:length(array)-w+1
        temp = array(i:i+w-1);
        for j = 1:length(temp)
            window_long(end+1) = temp(j);
        end
    end
    window = reshape(window_long,w,[]).'; % Reshapes the long strip into 2d.
else
    window = array;
end

end