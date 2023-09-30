function stripped = StripString(string)
% This functions strips a string input, meaning white space, \n and some of
% the unprintable character. Only the character with an ASCII value of 33
% to 126 (inclusive) will be included.

% Turn the character to ASCII form and lower it
% A new list for the ASCII form to go in
string = double(lower(string));
stripped_double = [];

% A for loop that checks whether which charactor meets the requirement or
% not.
% If not it is den skipped.

for i = 1:length(string)
    if (string(i) <= 126) && (string(i) >= 33)
        stripped_double(end+1) = string(i);
    end
end

% Turns value from double back to characters.
stripped = char(stripped_double);

end