clear, clc

[t,v] = SledNumericalSolutionOde45([10 100], 50);

disp(t)
disp(v)

% feval(@ode45, 2)