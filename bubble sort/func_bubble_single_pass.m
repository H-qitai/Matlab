function [A_updated, number_swaps] = func_bubble_single_pass(A)

A_updated = A;

number_swaps = 0;

for i = 1:length(A_updated)-1

    if A_updated(i) > A_updated(i+1)
        key = A_updated(i+1);
        A_updated(i+1) = A_updated(i);
        A_updated(i) = key;
        number_swaps = number_swaps + 1;
    end

end

end