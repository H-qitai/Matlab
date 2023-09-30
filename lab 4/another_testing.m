clear,clc

a = imread('test.png');
test_RGB = imread('test.png');
[rows, cols, colours] = size(test_RGB);
% imshow(test_RGB)

for i = 1:rows
    for j = 1:cols
        for k = 1:colours
            if IsPixelBlue(test_RGB(i,j,1),test_RGB(i,j,2),test_RGB(i,j,3)) == false
                test_RGB(i,j,k) = 255;
            else
            end
        end
    end
end
imshow(test_RGB)
