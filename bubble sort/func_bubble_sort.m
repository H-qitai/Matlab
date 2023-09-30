function [A_sorted] = func_bubble_sort(A)
nums_swaps = 1;

while nums_swaps > 0
    [A_updated, nums_swaps] = func_bubble_single_pass(A);
    A = A_updated;

end

A_sorted = A_updated;

end