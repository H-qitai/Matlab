function filter = FilterImage(image)
% This function will take an image, passes through the function of
% IsPixelBlue and check whether or not each pixels are considered blue. If
% it is considered as blue, this function will replace the pixel as white.
% 
% Author: Tony Huang

% Define filter is image so it is constantly updated
filter = image;
% Check the size of the image so the function can work on x size of images
[rows, cols, colours] = size(image);

% Checks the rows and column and layer one pixel by one pixel then calls
% the function of IsPixelBlue to check whether or not if the pixel is blue.
% If the pixel is not blue, it is den replaced by white.
for i = 1:rows
    for j = 1:cols
        for k = 1:colours
            if IsPixelBlue(filter(i,j,1),filter(i,j,2),filter(i,j,3)) == false
                filter(i,j,k) = 255;
            end
        end
    end

end

