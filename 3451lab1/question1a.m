function question1a
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
t = [0:0.01:10];
x1 = 0.1*sin(t) + 0.2*cos(2*pi*2*t+60);
plot(t,x1)
xlabel('time');
ylabel('x(t)');
end

