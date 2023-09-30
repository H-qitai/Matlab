clear
clc
n = 0;
while true
v = 100 * rand;
result = IsMissionSuccessful(v);
    if result ~= 0
        n = n + 1;
    else
        disp(n)
        return
    end
end