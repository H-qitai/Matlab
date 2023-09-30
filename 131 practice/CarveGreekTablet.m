function [tablet] = CarveGreekTablet(array)

col = length(array);

for i = col
    if array(i) ~= ' '
        temp(end+1) = array(i);
    end
end

m = sqrt(length(temp));
x = 1;

for i = 1:m
    for j = 1:m
        if j == 1
            x = x + 1;
            if mod(x,2) == 1
                mem(end+1) = temp(j);
            elseif mod(x,2) == 0
                mem(end+1) = ' ';
                mem(end+1) = temp(j);
            end
        else
            x = x + 1;
            if mod(x,2) == 1
                
        end
    end
end