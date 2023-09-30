%CalcCircuitCurrentInterative asks the user for the resistance for each
%resistor of an electrical circuit that consists of two resistors in 
%parallel (R1 and R2) connected to a third resistor in series (R3).
%Version one
%Author: Tony Huang

%Clear the existing variable in the work space
clear

%Ask the user to input each values for different resistors.
R1 = input('Enter the value for R1: ');
R2 = input('Enter the value for R2: ');
R3 = input('Enter the value for R3: ');

%Ask the user to input each value for the voltage.
V = input('Enter the value for the Voltage: ');

%Caculates the total resistance and current
RTotal = TotalCircuitResistance(R1,R2,R3);
I = V/RTotal;

%display both values
disp('The total resistance is: ')
disp(RTotal)
disp('The total current is: ')
disp(I)