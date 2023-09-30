function [is_beach, num_beach_days] = GoBeach(temp, rain)



is_beach = logical(1:length(temp));
num_beach_days = 0;
for i = 1:length(temp)
    if rain(i) == false
        if (temp(i) >= 20) && (temp(i) <= 30)
            is_beach(i) = true;
            num_beach_days = num_beach_days + 1;
        else
            is_beach(i) = false;
        end
    else
        is_beach(i) = false;
    end
end
end