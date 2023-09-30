% The two die script should display a histogram of probability information
% for throwing two die and simulate a simple dice game but it contains BUGS!!
% Remember that when dealing with loops, bugs can sometimes result
% in an infinite loop.  If you get stuck in an infiite loop  hit "Ctrl-C" 
% to stop execution.
%
% Here is what this script SHOULD do:
% First it simulates throwing two die a specified number of
% times and then displays the results graphically using a histogram,
% so that you can see the relative frequency of different rolls.
% Second it simulates a simple dice game where two die are
% thrown until a roll of "snake eye" (two ones) comes up.
% When the game is finished it displays how many rolls it took.
%
% TO DEBUG, read through the code to get an idea of what it should do and
% then try running it.  If it generates any errors then read the error
% message and click on it to be taken to the line that has a problem, so 
% that you can fix the probem.
%
% If your code runs but does not do what you expect, try rereading through
% the chunk of code you think might be causing the probem.  
% If you still can't spot any problems after reading through 
% the code, then place a break point at the start of the for loop
% and another at the start of the while loop.
% You can then use debugger to step through the code line by line
% so that you can see what the code does and verifies it behaves as 
% you expect.
% Make sure you check to see what values are assigned to the variables 
% inside the loops (you can do this by hovering your mouse over a
% variable name or looking in the workspace once the line has executed).
% 
% Author: Peter Bier

clear

% simulate throwing two die a specified number of times
numberOfRolls = input('Enter number of rolls to simulate: ');

% PLACE A BREAKPOINT ON THE LINE BELOW, by clicking to the left of the line
for i=1:numberOfRolls
    % generate two random numbers between 0 and 6 and round them up
    dice1 = ceil(6*rand);
    dice2 = ceil(6*rand);
    % store the sume of the die in the result array
    % store the first result in the first element, second in second, etc.
    result = dice1 + dice2;
end

% graphically display the results using a histogram with 11 bins
histogram(result,11)
title(['Results from throwing two die ' num2str(numberOfRolls) ' times']);

% now find out how many rolls it takes to throw a "snake eyes" 
% snake eyes is two ones, which adds together to give a total of 2.
counter = 0;

% PLACE A BREAKPOINT ON THE LINE BELOW, by clicking to the left of the line
while currentRoll > 1
    dice1 = ceil(6*rand);
    dice2 = ceil(6*rand);
    currentRoll = dice1 + dice2;
    disp(['You rolled ' num2str(currentRoll)]);
    counter = counter + 1;
end

disp(['It took ' num2str(counter) ' rolls to get snake eyes.']);

