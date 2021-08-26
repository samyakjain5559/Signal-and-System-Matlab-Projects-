function question3
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
t = [0:0.01:0.5];
v= 50.*sin(10*pi*t);   % refrence matlab.com
i = 10.736.*sin(10*pi*t-21.6)+10.736.*cos(10*pi*t-21.6);
plot(t,v)
hold on
plot(t,i)
legend('voltage','current')
ylabel('voltage and current')
xlabel('time')
end

