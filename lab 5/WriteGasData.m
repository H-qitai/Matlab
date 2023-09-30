function Pa = WriteGasData(Filename ,Vol, Temp)
% The function WriteGasData is use to calculate the pressure of the data
% given in gasData.txt/gasDataLarge.txt. It converts the Volume and
% Temperature of the gas with the gas constant of 8.314 to Pa.
% Input: Vol,Temp
% Output: Pa
% 
% Author: Tony Huang
% Date: 21/08/22

% opens the file
fid = fopen(Filename, 'wt');

% write the title
fprintf(fid,'%s\n' , 'Pressure (Pa)');

% calculates and write the value in for each line
for i = 1:length(fid)
    K = 273.15 + Temp;
    Pa = (2 .* 8.314 .* K)./Vol;
    fprintf(fid, '%0.4f\n' ,Pa);
end
fclose(fid);
end