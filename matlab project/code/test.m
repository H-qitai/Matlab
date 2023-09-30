clear, clc

% hashes = [77 74 42 17 98 50 17 98 8 88 67 39 77 74 42 17 98];
hashes = [17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17];
w = Window(4, hashes);

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

% The unique function built in by matlab strips all of the duplicate values
% in a list.
pos_with_index = {};

for i = 1:length(value1)
    pos_with_index{i} = [value1(i);value(i)];
end

for i = 1:length(pos_with_index)
    temp = pos_with_index(i);
    temp2 = pos_with_index(i);
    if temp(1) == temp(2)

    end
end


% This for loop finds all of the minimum value position in the og_w.

% for i = 1:length(value1)
%     mem = find(og_w==value1(i));
%     for j = 1:length(mem)
%         pos_index(end+1) = mem(j);
%     end
% end

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

disp(fp_with_rp)