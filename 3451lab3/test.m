function test
%UNTITLED4 Summary of this function goes here
t = -4:0.001:4;
x = 0;
y = 0;
for n = -25:2:25
    if(n==0)
        continue;
    end
    dn = (1/(1i*n*pi))*(1-exp(-1*1i*n*pi))*exp(n*pi*1i*t); % To = 2
    yn = (1/(1i*n*pi))*(1-exp(-1*1i*n*pi))*exp(n*pi*1i*t)*8/(20+i*n*pi);
    x = x + dn;
    y = y + yn
end 
plot(t,y);
end
