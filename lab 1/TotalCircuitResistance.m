function RTotal = TotalCircuitResistance(R1,R2,R3)
% TotalCircuitResistance calculates the total resistance of a component of
% an electrical circuit that consists of two resistors in parallel (R1 and
% R2) connected to a third resistor in series (R3).
% 24/07/2022 15:51
% Author: Tony Huang



%A set of calculation that calculates the total resistance for that particular
%arrange of circuit.
RTotal = R1 * R2 / (R1 + R2) + R3;

end