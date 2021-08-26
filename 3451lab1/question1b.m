function question1b
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
t = [0:0.01:10];
for i = 0:45:180
   x1 = 0.1*sin(t) + 0.2*cos(2*pi*2*t+i); 
   plot(t,x1)
   hold on
end
   legend('theta=0','theta=45','theta=90','theta=135','theta=180')
   xlabel('time');
   ylabel('x(t)');
end

% part c -- its not periodic

