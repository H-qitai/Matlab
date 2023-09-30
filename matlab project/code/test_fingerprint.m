clear, clc

W = 4;

% hashes = [77 74 42 17 98 50 17 98 8 88 67 39 77 74 42 17 98];
hashes = [17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17];
% hashes = [77 74 42 17 98 50 17 98 8 88 67 39 77 74 42 17 98 80 76 94];
% hashes = [3 1 4 1 5 9 2 6 5];
% Fingerprint(Window(2, [2 7 1 8 2 8 1 8 2 8]))
w = Window(W, hashes);
disp(Fingerprint(w))

% Size = size(w);
% x = Size(2);
% y = Size(1);
% og_w = [];
% og_w_pos = [];
% pos = [];
% rows = w(1:y,:);
% mem = [];
% value = [];
% value1 = [];
% n = 1;
% pos_index = [];
% pos_value = [];
% 
% for i = 1:y
%     og_w(end+1) = w(i);
% end
% 
% for i = 2:x
%     og_w(end+1) = w(y, i);
% end
% 
% for i = 1:length(og_w)
%     og_w_pos(end+1) = i;
% end
% 
% for i = 1:y
%     Min = RightMin(w(i,:));
%     index = find(w(i,:)==Min);
%     if length(index) == 1
%         pos(end+1) = index;
%     else
%         pos(end+1) = index(end);
%     end
% end
% 
% for i = 1:length(pos)-1
%     if pos(i) <= pos(i+1)
%         value(end+1) = pos(i);
%     end
% end
% 
% value(end+1) = pos(end);
% 
% for i = 1:y
%     [m, pos1] = RightMin(w(i,:));
%     if pos1 == value(n)
%         pos2 = find(rows(i,:)==m);
%         value1(end+1) = m;
%         n = n + 1;
%     end
% end
% 
% % apishg[q0awtj
% temp = unique(value1);
% 
% for i = 1:length(temp)
%     mem = find(hashes==temp(i));
%     for j = 1:length(mem)
%         pos_index(end+1) = mem(j);
%     end
% end

% if Size(2) > length(hashes)-2
%     pos_index = pos_index(end);
% end
% 
% pos_index = sort(pos_index);
% 
% for i = 1:length(pos_index)
%     pos_value(end+1) = hashes(pos_index(i));
% end
% 
% fp_with_rp = [pos_value;pos_index]
