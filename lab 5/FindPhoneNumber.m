function results = FindPhoneNumber(searchstring, contacts)
% FindPhoneNumber, when provided a name (or part of a name), searches
% through a list of names to see which ones match (ignoring case).  For any
% that match, their name and phone number are returned in a cell array. If
% there are no matches then an empty cell array is returned. Unforunately
% this function is BUGGY!
%
% Input: searchstring: string of a name (or part of name) to look for in
%           the contact list.
%        contacts: filename of the cell arrays for both names
%           and corresponding phonenumbers.
% Output: results: nested cell array with every element being another cell
%           array of the name (first element) and phone number (second
%           element).
% 
% Author: MZ 2021

load(contacts); % load the file that has been called
results = {};
% Scan through contacts
peopleFound = 0;

for i=1:length(names)
    currentName = names{i}; % changed to braces so strfind would work
    if length(strfind(lower(currentName), lower(searchstring))) > 0
        % if we find a name match, add name and number to results
        results{end+1} =  {currentName,phonenumbers{i}}; % added braces so it works
        peopleFound = peopleFound + 1; %Shifted up so it works
%     else
%         for j = i
%             disp(j)
%         end
    end
    
end

% If we didn't find anyone, return an empty cell array.
% if peopleFound == 0
%     results = {}; % changed it to braces
% end
% disp('--------------')
% disp(peopleFound)
end