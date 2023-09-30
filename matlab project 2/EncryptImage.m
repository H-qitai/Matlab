function [cipher] = EncryptImage(image, key)
% Encrypt a plain image using a key array of patterns 
% (a cell array containing 2x2 patterns), to obtain an encrypted cipher 
% array of patterns (a cell array containing 2x2 patterns)
%
% Inputs: Two inputs in the following order
% 1) A 2D array of uint8 values (i.e. a grayscale image) 
% containing the black and white plain image to encrypt.
% 2) A 2D cell array of 2x2 patterns to act as a key array of patterns. 
% Each element of the cell array will be a pattern stored as a 2x2 array 
% of uint8 values (i.e. a grayscale image)
% 
% Outputs: A 2D cell array of 2x2 patterns which is our cipher array of 
% patterns (i.e. it was created by encrypting our plain image). 
% Each element of the array will be a pattern stored as a 2x2 array of 
% uint8 values (i.e. a grayscale image)
% 
% Author: Tony Huang

Size = size(image);
row = Size(1);
col = Size(2);

for i = 1:row
    for j = 1:col
        if image(i,j) < 128
            cipher{i,j} = ImageComplement(key{i,j});
        else
            cipher{i,j} = key{i,j};
        end
    end
end