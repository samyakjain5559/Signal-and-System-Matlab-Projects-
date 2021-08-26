function question2c
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
syms y(t)
u = @(t)(t>=0);
equation = 0.2*y+0.2*diff(y,t) == 0.5
%0.5.*heaviside(t)
condition = y(0) == 5;
solution = dsolve(equation,condition)
fplot(t,solution)
xlabel('time')
ylabel('solution')
end

