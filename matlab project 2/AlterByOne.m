function [encrypted] = AlterByOne(tbe)
% This function turns a letter in to a ascii value and adds one to the
% value. Thus encrypting making it encrypted
%
% Author: Tony Huang

x = uint8(tbe);

if x == 255
    encrypted = x - 1;
elseif x < 255
    encrypted = x + 1;
end