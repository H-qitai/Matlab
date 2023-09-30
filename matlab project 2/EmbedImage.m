function [image] = EmbedImage(binary, colour)
%Used to embed a binary (i.e. black and white) image 
% (stored as a grayscale image) inside another colour image 
% (i.e. a 3D array of uint8 values representing an RGB image)
%
% Input: Two inputs in the following order
% 1) A 2D array of uint8 values (i.e. a greyscale image) of the black and 
% white image to embed inside the colour image. Pixel values will either 
% be 0 or 255.
% 2) A 3D array of uint8 values (i.e. an RGB colour image) that the 
% black and white image will be embedded into
%
% Ouput: A 3D array of uint8 values (i.e. an RGB colour image) that 
% contains a hidden black and white image
%
% Author: Tony Huang

Size = size(binary);
bi_row = Size(1);
bi_col = Size(2);

Size = size(colour);
row = Size(1);
col = Size(2);

x = zeros(Size(1),Size(2),3);

for i = 1:bi_row
    for j = 1:bi_col
        for k = 1:3
            y = double(colour(i,j,1)) + double(colour(i,j,2)) + double(colour(i,j,3));
            if k == 1
                if binary(i,j) == 255
                    if mod(y,2) == 0
                        x(i,j,1) = AlterByOne(colour(i,j,1));
                    else
                        x(i,j,k) = colour(i,j,k);
                    end
                elseif binary(i,j) == 0
                    if mod(y,2) == 1
                        x(i,j,1) = AlterByOne(colour(i,j,1));
                    else
                        x(i,j,k) = colour(i,j,k);
                    end
                else
                    x(i,j,k) = colour(i,j,k);
                end
            else
                x(i,j,k) = colour(i,j,k);
            end
        end
    end
end

for i = 1:row
    for j = 1:col
        for k = 1:3
            image(i,j,k) = colour(i,j,k);
        end
    end
end

for i = 1:bi_row
    for j = 1:bi_col
        for k = 1:3
                image(i,j,k) = x(i,j,k);
            end
        end
    end
end
