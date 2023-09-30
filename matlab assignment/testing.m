clear,clc

b = size(a);

y_a = b(1);
x_a = b(2);
cal = [];
new_a = [];
total_resize = [];
n = 2;

for i = 1:2:y_a
    for j = 1:2:x_a
    cal = [a(i,j),a(i+1,j),a(i,j+1),a(i+1,j+1)];
    N_tb_resize = mean(cal,"all");
    total_resize(end+1) = N_tb_resize;
    end
end

new_a = reshape(total_resize,(y_a/2),(x_a/2));

new_a = uint8(new_a);
imshow(uint8(new_a))
