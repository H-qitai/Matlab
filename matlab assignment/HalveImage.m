function new_img = HalveImage(inp_img)

z = size(inp_img);

x_length = z(2);
y_length = z(1);

check_x_num = mod(z(1)/2,2);
check_y_num = mod(z(2)/2,2);

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
    inp_img = [inp_img, add_y_vert];
end

if check_x_num ~=0
    N_z = (size(inp_img));
    N_y_length = N_z(2);
    
    for x_i = 1:N_y_length
        add_x(x_i) = inp_img(y_length, x_i);
    end
    
    inp_img = [inp_img;repmat(add_x,1,1)];
end


b = size(inp_img);

y_img_uint8 = b(1);
x_img_uint8 = b(2);
total_resize = [];

for i = 1:2:y_img_uint8
    for j = 1:2:x_img_uint8
    cal = [inp_img(i,j),inp_img(i+1,j),inp_img(i,j+1),inp_img(i+1,j+1)];
    N_tb_resize = mean(cal,"all");
    total_resize(end+1) = N_tb_resize;
    end
end

new_img_b = uint8(reshape(total_resize,(x_img_uint8/2),(y_img_uint8/2)));
new_img = new_img_b.';
end