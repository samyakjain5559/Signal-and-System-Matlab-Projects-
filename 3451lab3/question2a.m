function question2a
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

t = -4:0.001:4;
x = 0;
for n = -25:2:25
    if(n==0)
        continue;
    end
    dn = (1/(1i*n*pi))*(1-exp(-1*1i*n*pi))*exp(n*pi*1i*t); % To = 2
    x = x + dn;
end 
plot(t,x);
xlabel('time');
ylabel('f(t)');
end

