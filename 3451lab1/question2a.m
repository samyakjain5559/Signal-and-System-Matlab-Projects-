function question2a
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
t = [0:0.01:10];
et = exp(-0.1*pi*t);
subplot(2,1,1);
plot(t,et,'r');

x2 = exp(-0.1*pi*t).*cos(2*pi*t);
hold
plot(t,x2);
xlabel('time')
ylabel('x2')
legend('e(t)','x2')
end

