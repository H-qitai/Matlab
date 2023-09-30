function [Vol, Temp] = ReadGasData(File, Rows)
% This function will take a data file called gasData.txt, The function will
% read the file. 
% Input: File2BeRead, row number
% Output: gas volume, Temperature
% E.g. Input: 'gasData.txt', 1000
%      Output: 4.997325	5.035000
% 
% Author: Tony Huang
% Date: 21/08/22

% Opens the file
fid = fopen(File, 'r');

% Remove the first line of the file and two list where the values can go
% into.
line = [fgetl(fid)];
line_num = 0;
Vol = [];
Temp = [];

% A while loop that appends the value into the list
while line_num ~= Rows
    line = fgetl(fid);
%     disp(line)
    Vol(end+1) = str2double(line(1:8));
    Temp(end+1) = str2double(line(9:17));
    line_num = line_num + 1;
end

fclose(fid);
end