function [key, encrypted] = EncryptBinaryImage(img)
% EncryptBinaryImage will encrypt a binary image (i.e. an image only containing black and
% white pixels) using a randomly generated key image of the same size as the binary image.
% Input: a binary image to encrypt, passed in as a 2D array of uint8 values
% (i.e. a greyscale image) where pixel values will either be 0 or 255
% Two outputs in the following order:
% 1) A randomly generated key image (the same size as the binary image)
% returned as a 2D array of uint8 values (i.e. a greyscale image) where
% pixel values will either be 0 or 255
% 2) An encrypted image, (the same size as the binary image)
% returned as a 2D array of uint8 values (i.e. a greyscale image) where
% pixel values will either be 0 or 255
% 
% Author: Tony Huang


% Define the size of the input img.
Size = size(img);
row = Size(1);
col = Size(2);

% Creates a randomized same size array for key.
random = randi([1 2], row,col);

% Assign the randomized value to 0 and 255.
for i = 1:row
    for j = 1:col
        if random(i,j) > 1
            key(i,j) = 255;
        else
            key(i,j) = 0;
        end
    end
end

% Assign values to the encrypted img using the encryption algorithms.
for i = 1:row
    for j = 1:col
        if img(i,j) == 255
            encrypted(i,j) = 0;
        else
            encrypted(i,j) = key(i,j);
        end
    end
end