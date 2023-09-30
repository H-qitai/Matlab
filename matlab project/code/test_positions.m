clear,clc


f1 = [10 30 20; 2 4 7];
f2 = [30 40 30 10; 1 3 5 7];
f3 = [21 50 60; 1 4 7];

[p1, p2] = FindMatchPositions(f1,f2);
disp(p1);
disp(p2);




% fp1_with_pot = [10 30 20;
%                  2  4  7];
% fp2_with_pot = [30 40 30 10;
%                  1  3  5  7];
% 
% fp1_fp = fp1_with_pot(1,:);
% fp2_fp = fp2_with_pot(1,:);
% 
% fp1_pot = fp1_with_pot(2,:);
% fp2_pot = fp2_with_pot(2,:);
% 
% pot1 = [];
% pot1_fp = [];
% pot2 = [];
% pot2_fp = [];
% 
% for i = 1:length(fp1_fp)
%     if length(strfind(fp2_fp, fp1_fp(i))) >= 1
%         temp = strfind(fp2_fp, fp1_fp(i));
%         for j = 1:length(temp)
%             pot1_fp(end+1) = temp(j);
%         end
%         pot1 = sort(fp2_pot(pot1_fp));
%     end
% end
% 
% 
% for i = 1:length(fp2_fp)
%     if length(strfind(fp1_fp, fp2_fp(i))) >= 1
%         temp = strfind(fp1_fp, fp2_fp(i));
%         for j = 1:length(temp)
%             pot2_fp(end+1) = temp(j);
%         end
%         pot = unique(sort(fp1_pot(pot2_fp)));
%     end
% end



