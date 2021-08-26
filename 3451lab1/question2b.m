function question2b
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
t = [0:0.01:10];
u = t>=2;
x2 = exp(-0.1*pi*t).*cos(2*pi*t);
x2b = u.*(x2);
plot(t,x2b);
xlabel('time')
ylabel('x2b')
legend('x2b')
end

