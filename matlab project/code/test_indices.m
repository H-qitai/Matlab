clear, clc

a = FindMatchIndices([1 2 3 0], [2 7 1 8 2 8])

% a1 = [3 1 4 1 5];
% a2 = [1 2 3 0];
% indices = [];
% 
% for i = 1:length(a2)
%     if length(strfind(a1, a2(i))) >= 1
%         temp = strfind(a1, a2(i));
%         for j = 1:length(temp)
%             indices(end+1) = temp(j);
%         end
%     end
% end