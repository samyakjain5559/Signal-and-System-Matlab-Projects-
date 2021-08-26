function question5a
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x = [-5:0.001:5];
f1 = -3*sign(x).*exp((j*2*pi*x)+0.25*x);
subplot(2,1,1)
plot(x,imag(f1))
grid on
title('imaginary plot')
ylabel('imaginary x axis')
xlabel('time')
subplot(2,1,2)
plot(x,real(f1))
grid on
title('real plot')
ylabel('real x axis')
xlabel('time')
end

