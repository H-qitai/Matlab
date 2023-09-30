function [greek] = MakeItGreek(alpha, shift)

Length = length(alpha);
alpha_a = alpha + 0;


for i = 1:Length
    if alpha(i) ~= ' '
        if alpha_a(i) >= 65 && alpha_a(i)+shift <= 90
            greek(i) = char(alpha(i) + 848 + shift);
        elseif (alpha_a(i) + shift > 90) && (alpha_a(i) >= 65 && alpha_a(i) <= 90)
            if shift <= 26
                greek(i) = char((alpha(i)+848+shift) - (26));
            else
                x = shift/26;
                greek(i) = char((alpha(i)+848+shift) - (26*x));
            end
        end
    else
        greek(i) = char(alpha(i));
    end
end