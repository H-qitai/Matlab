clear, clc

inp_img =  uint8([139,191,248;
            83,107,84;
            158,126,214;
            92,177,188; ...
            0   0   0]);

z = size(inp_img);
x_length = z(2);
y_length = z(1);

check_x_num = mod(z(1)/2,2);
check_y_num = mod(z(2)/2,2);

if check_y_num ~= 0
    z = size(inp_img);
    add_y = [];
    x_length = z(2);
    y_length = z(1);
    
    for y_i = 1:y_length
        add_y(y_i) = inp_img(y_i,x_length);
    end
    
    add_y_vert = add_y';
    inp_img_N1 = [inp_img, add_y_vert];
end

if check_x_num ~=0
    N_z = (size(inp_img_N1));
    N_y_length = N_z(2);
    
    for x_i = 1:N_y_length
        add_x(x_i) = inp_img_N1(y_length, x_i);
    end
    
    inp_img = [inp_img_N1;repmat(add_x,1,1)];

end