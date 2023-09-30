function fp_with_rp = Fingerprint(w)
% Takes a set of windows (in the form of a 2D array) and calculates a 
% document fingerprint using the winnowing algorithm 
% (i.e., we select the rightmost minimum from each window). 
% It will return the document fingerprint as a 2D array in which each 
% column contains a winnowed value and its corresponding position.
% 
% Input: A n x w 2D array representing a set of windows, where each window 
% has w values in it.
% 
% Output: A 2 row 2D array representing a fingerprint, which consists of a 
% set of winnowed values (the first row) and the relative positions of 
% those values (the second row). Each column of the output, therefore, 
% contains a hash value/position pair.
% 
% Author: Tony Huang 31/08/22 - 01/09/22

% Cannot be asked to do commenting right now, If u see this please check the later version. The sole purpose of this is to check
% whether or not the code works. Took me quite a while. Going to work now....

% Define all variable needed for the function.

Size = size(w);
x = Size(2);
y = Size(1);
og_w = [];
og_w_pos = [];
pos = [];
rows = w(1:y,:);
value = [];
value1 = [];
n = 1;
pos_index = [];
pos_value = [];

% The two for loops under gets the original input of the one d array. 
% og is short for original
for i = 1:y
    og_w(end+1) = w(i);
end

for i = 2:x
    og_w(end+1) = w(y, i);
end

% The for loop under create another one d array with the position for
% og_w. This way the og_w have matching position for each value.

for i = 1:length(og_w)
    og_w_pos(end+1) = i;
end

% This for loop under finds all of the minimum value in each line from the
% w. w is a matrix (from input). og_w is one d array

for i = 1:y
    Min = RightMin(w(i,:));
    index = find(w(i,:)==Min);
    if length(index) == 1
        pos(end+1) = index;
    else
        pos(end+1) = index(end);
    end
end

% This for loop under determine which of value is a new minimum value. 
% This for loop compares the position of each min value from each line. if
% the position of value 1 is smaller than value 2. A new value is stored.
for i = 1:length(pos)-1
    if pos(i) <= pos(i+1)
        value(end+1) = pos(i);
    end
end

% This line takes the min value at the end.
value(end+1) = pos(end);

% This function finds all the matching minimum value with position. If the
% position matches the value is added to a new list.
for i = 1:y
    [m, pos1] = RightMin(w(i,:));
    if pos1 == value(n)
        pos2 = find(rows(i,:)==m);
        value1(end+1) = m;
        n = n + 1;
    end
end
% asd = [];
% The unique function built in by matlab strips all of the duplicate values
% in a list.
% for i = 1:length(value1)
%     asd = find(og_w==value1(i));
%     asd1 = find
% end
temp = unique(value1);

% This for loop finds all of the minimum value position in the og_w.

for i = 1:length(temp)
    mem = find(og_w==temp(i));
    for j = 1:length(mem)
        pos_index(end+1) = mem(j);
    end
end

% Determine whether the width of the w is close to the og_w
% If it is the minimum value on the very right is taken.

if Size(2) >= length(og_w)-1
    pos_index = pos_index(end);
end

% This sorts the position index of the original w
pos_index = sort(pos_index);

% Using the pos_index value and get the values that corresponds to og_w
for i = 1:length(pos_index)
    pos_value(end+1) = og_w(pos_index(i));
end

% Combine the values of pos_value and pos_index into a single matrix.
fp_with_rp = [pos_value;pos_index];
