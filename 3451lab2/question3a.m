function question3a
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms y(t)
equation = 1*y+2*diff(y,t)+diff(y,t,2) == 0; % refrence dsolve at matlab.com and lecture notes
firstd = diff(y,t);
condition = [y(0) == 1 , firstd(0) == 8];
solution(t) = dsolve(equation,condition);
%fplot(t,solution)
ezplot(solution,[0,20]);
xlabel('time')
ylabel('solution')
end

