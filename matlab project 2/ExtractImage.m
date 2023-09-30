function [b_img] = ExtractImage(c_img)
% Extract a black and white image that has been embedded within a colour image
% 
% Inputs: A 3D array of uint8 values (i.e. an RGB colour image) that 
% contains a hidden black and white image
% 
% A 2D array of uint8 values (i.e. a greyscale image) of the black and 
% white image that was hidden inside the colour image 
% (each pixel will have a value of 0 or 255)

Size = size(c_img);
row = Size(1);
col = Size(2);

for i = 1:row
    for j = 1:col
        x = double(c_img(i,j,1)) + double(c_img(i,j,2)) + double(c_img(i,j,3));
        if mod(x,2) == 1
            b_img(i,j) = uint8(255);
        else
            b_img(i,j) = uint8(0);
        end
    end
end