clear,clc
a = [4 1 12 3 8];

c = [];

c(end + 1) = a(1);

for i = 1:length(a) -2
        b = (a(i) + a(i+1)*2 + a(i+2))./4 ;
        c(end + 1) = b;
end

c(end + 1) = a(end);