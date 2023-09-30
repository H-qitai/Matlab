function [is_swap, num_swaps] = SwapIndicator(array)
num_swaps = 0;
    is_swap = logical(length(array));
    for i = 1:length(array)-1
        if array(i) < array(i+1)
            is_swap(i) = 1;
            num_swaps = num_swaps + 1;
        else
            is_swap(i) = 0;
        end
    end
end