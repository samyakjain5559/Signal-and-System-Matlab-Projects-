function test3
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%n = linspace(-25,25,24);
%n = -25:1:25;
t = -1:0.1:1;
x = 0;
n = 1:25;

for a =1:length(t)
    x(a) = sum((4./(pi*n)) .* sin(n*2*pi*t(a)));
    % Refrence using the equation of fourier series from chapter 4 pg 10
    % of lecture slides
end
%x = sum((4./n.*pi .* sin(n.*2.*pi.*t)))
h = 8 .* exp(-1*2*t) .* heaviside(t);
y = conv(x,h);
subplot(2,1,1);
plot(y);
subplot(2,1,2);
plot(x);
end

