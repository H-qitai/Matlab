function asd = testfunc(w)

Size = size(w);
x = Size(2);
y = Size(1);
og_w = [];
og_w_pos = [];


for i = 1:y
    og_w(end+1) = w(i);
end

for i = 2:x
    og_w(end+1) = w(y, i);
end

for i = 1:length(og_w)
    og_w_pos(end+1) = i;
end

asd = og_w;

end