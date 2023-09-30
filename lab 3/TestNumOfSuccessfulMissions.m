clear
clc

v = 10 * rand(1, 5);
n = 0;
Size = size(v);
disp(v)
while n < Size(2)
    n = n + 1;
    result = IsMissionSuccessful(v(n));
    if result == false
        n = n - 1;
        disp(n)
        return
    end
end