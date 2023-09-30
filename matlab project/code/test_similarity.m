clear, clc

SimilarityScore([1 2 6], 3, 100)

% pos = [1 2 6];
% k = 3;
% LengthT = 10;
% match = [];
% 
% Length = 1:LengthT;
% 
% for i = pos
%     temp = i:i+k-1;
%     for j = 1:length(temp)
%         match(end+1) = temp(j);
%     end
% end
% 
% match = unique(match);
% 
% percent = length(match)/LengthT;