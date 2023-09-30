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
% Example call:
% binaryImage = imread('binary.png');
% [keyImage, encryptedImage) = EncryptBinaryImage(binaryImage);
function [keyImage, encryptedImage] = EncryptBinaryImage1(binaryImage)
dim = size(binaryImage);
keyImage = zeros(dim(1), dim(2));
encryptedImage = zeros(dim(1), dim(2));
for i = 1:dim(1)
    for j = 1:dim(2)
        keyImage(i,j) = logical(randi([0,1]));
        if binaryImage(i,j) == 0
            encryptedImage(i,j) = ~(keyImage(i,j));
        else
            encryptedImage(i,j) = keyImage(i,j);
        end
    end
end

keyImage = uint8(255 * keyImage);
encryptedImage = uint8(255 * encryptedImage);
end

