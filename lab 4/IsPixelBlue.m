function blue_checky = IsPixelBlue(r,g,b)
% blue_checky function checks whether or not if an pixel is blue.
% The function determines if the color is considered blue by check the 
% r,g,b of the color.
% input: r,g,b
% output: a boolean(1 = true, 0 = false)
% e.g. IsPixelBlue(10, 20, 200)
% output should be 1
% Therefore it is blue
% 
% Author: Tony Huang

% Check if color red exceeds the 128
if r < 128
    % Check if color green exceeds the 128
    if g < 128
        % Check if color blue exceeds the 128
        if b >= 128
            blue_checky = true;
        else
            blue_checky = false;
        end
% Since all values have to be suited, if one value is incorrect the blue is
% blue.
    else
        blue_checky = false;
    end
else
    blue_checky = false;
end