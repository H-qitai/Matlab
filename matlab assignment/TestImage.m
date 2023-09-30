clear, clc

% test_gray =  [139   191   248   243     0;
%               83   107    84     8      0;
%               158   126   214    91     0;
%               92   177   188   169      0; %];
%               0     0      0     0      0];
% half_sized_image = HalveImage(uint8(test_gray));
% imshow(half_sized_image)

% test_gray =  [207,207,248,243;83,107,84,8;158,126,214,91];
% test_gray = imread('greylogo.png');
% uint8(test_gray);
% 
% imshow(test_gray)

% test_gray =  uint8([207   191   248   243     ;
%                     83   107    84     8      ;
%                     158   126   214    91     ;
%                    92   177   188   169       ;]);
% 
% z = size(test_gray);
% add_y = [];
% x_length = z(2);
% y_length = z(1);
% 
% 
% for y_i = 1:y_length
%     add_y(y_i) = test_gray(y_i,x_length);
% end
% 
% add_y_vert = add_y';
% test_gray_N1 = [test_gray, add_y_vert];
% 
% N_z = (size(test_gray_N1));
% N_y_length = N_z(2);
% 
% for x_i = 1:N_y_length
%     add_x(x_i) = test_gray_N1(y_length, x_i);
% end
% 
% test_gray_N2 = [test_gray_N1;repmat(add_x,1,1)];
% 
% 
% imshow(test_gray_N2)


test_gray =  uint8([207   191   248   243     ;
                    83   107    84     8      ;
                    158   126   214    91     ;
                   92   177   188   169       ;]);