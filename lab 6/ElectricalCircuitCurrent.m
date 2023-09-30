function It = ElectricalCircuitCurrent(info)
% The function ElectricalCircuitCurrent takes in two voltage source and
% three resistor value and calculates the total current for that 
% specific circuit.
% input: [V1 R2 V3 R4 R5] 10 3 4 4 3
% output: [I1 I2 I3 I4 I5]
% 
% Author: Tony Huang 26/08/22

% Set value for variables
V1 = info(1);
R2 = info(2);
V3 = info(3);
R4 = info(4);
R5 = info(5);

% using kcl and kvl to solve for simultaneos
A = [1, -1, 0, 0, 0;
     0,  1, 1, -1, 0;
     0,  0, -1, +1, -1;
     0, R2, 0, R4, R5;
     0, R2, 0, 0, R5;];

b = [0;0;0;V1;(V1-V3)];

x = linsolve(A,b);

% combines all value into a list.
i1 = x(1);
i2 = x(2);
i3 = x(3);
i4 = x(4);
i5 = x(5);

It = [i1,i2,i3,i4,i5];

end