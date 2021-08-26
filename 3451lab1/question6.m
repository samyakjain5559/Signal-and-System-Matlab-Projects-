function question6
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
syms x
y = piecewise(-2<=x<0,0.25*x,0<=x<0.5,1.5,0.5<=x<=2,-x+2);
subplot(2,1,1)
fplot(y)
title('x(t)')
ylabel('x(t)')
xlabel('time')
y = piecewise(-3<=x<-1,2*0.25*x,-1<=x<-0.5,2*1.5,-0.5<=x<=2,2*(-x+2));
subplot(2,1,2)
fplot(y)
title('x(t)')
ylabel('x(t)')
xlabel('time')
end

