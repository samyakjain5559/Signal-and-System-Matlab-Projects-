function question1a
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x =linspace(0,2,500);
s = (0.2.*3.*cos(2*pi*1000*x)+1).*(10.*cos(2*pi*20000*x));
subplot(2,1,1)
plot(x,s)
xlabel('time')
ylabel('s(t)')
m = 3.*cos(2*pi*1000*x);
subplot(2,1,2)
plot(x,m)
xlabel('time')
ylabel('m(t)')
end

