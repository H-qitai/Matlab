function [b_img] = DecryptImage(cipher, key)
% Decrypt a cipher image using the key image
% 
% Inputs: Two inputs in the following order
%     1) A 2D array of uint8 values (i.e. a grayscale image) containing the 
%     black and white cipher image (each pixel will have a value of 0 or 255)
%     2) A 2D array of uint8 values (i.e. a grayscale image) containing the 
%     black and white key image (each pixel will have a value of 0 or 255)
% 
% Outputs: A 2D array of uint8 values (i.e. a grayscale image) containing 
% the decrypted image, this will be the same size as the key.
% 
% Author: Tony Huang

Size = size(cipher);
row = Size(1);
col = Size(2);

for i = 1:row
    for j = 1:col
        if (cipher(i,j) == 255 && key(i,j) == 255) || (cipher(i,j) == 0 && key(i,j) == 0)
            b_img(i,j) = uint8(255);
        else
            b_img(i,j) = uint8(0);
        end
    end
end