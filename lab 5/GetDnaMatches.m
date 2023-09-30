function [DNA] = GetDnaMatches(DNA_str)
% This function will take a string of DNA sequence and analyse to determine
% whether or not a specific DNA chain has appeared within the input DNA
% Chain.
% 
% Date: 21/08/22
% Author: Tony Huang

% Stores the comparing DNA line as variables
S1a = 'AGTCACT'; % all underlined
S1b = 'AcgT';
S2a = 'TACTga'; % 'TAC' underlined
S2A = 0;
% Since it is case insentive, convert everything to lower case
DNA_1 = strfind(lower(DNA_str), lower(S1a));
S1A = length(DNA_1);

% No requirement so standard find
DNA_2 = strfind(DNA_str, S1b);
S1B = length(DNA_2);

% Find Tga in whole DNA list and take the first 3 position before it and
% check whether or not they are TAC. Since tac is case insensitive
% therefore can be converted to all lower.
DNA_3 = strfind(DNA_str, 'Tga');
for i = 1:length(DNA_3)
    if  lower(DNA_str(DNA_3(i)-3:DNA_3(i)-1)) == 'tac'
        S2A = S2A + 1;
    end
end

% Add all to an array and use the function formatter.
% DNA = DnaOutputFormatter([S1A, S1B, S2A]);
DNA = [S1A,S1B,S2A];