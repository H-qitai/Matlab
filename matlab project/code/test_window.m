clear, clc

array = [3 1 4 1 5 9 2 6 5];
w = 4;
window_long = [];

if w < length(array)
    for i = 1:length(array)-w+1
        temp = array(i:i+w-1);
        for j = 1:length(temp)
            window_long(end+1) = temp(j);
        end
    end
    window = reshape(window_long,w,[]).';
else
    window = array;
end