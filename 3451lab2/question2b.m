function question2b
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms y(t)
%equation = 0.2*y+0.2*diff(y,t) == 0;
equation = 2*y+diff(y,t) == exp(-t);
condition = y(0) == 0;
solution(t) = dsolve(equation,condition)
ezplot(solution,[0,5]);
xlabel('time')
ylabel('solution')
end

