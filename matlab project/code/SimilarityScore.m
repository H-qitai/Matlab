function percent = SimilarityScore(pos, k, LengthT)
% Calculates a similarity score by taking a list of matched positions for 
% a string and determining what proportion of characters in a string matched.
% Input: A 1D array containing a list of indices which correspond to position matches (this could be an empty array).
%       The k value indicates the length of each match (which will be a positive integer greater than zero).
%       The total length of the string that was converted into k-grams.
% Output: Percentage of similarity
% 
% Author: Tony Huang 01/09/22

% Create an empty array for values to go in
match = [];

% Make a for loop that takes the position of pos (input array)
for i = pos
%     Create a temp that consider the the pos value (from above) with the k
%     window.
    temp = i:i+k-1;
    for j = 1:length(temp)
        match(end+1) = temp(j);
    end
end

% Removes all duplicate values and calculate the percentage
match = unique(match);
percent = length(match)/LengthT;