function question1
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=0:(1/8000):2;
f=150*a;
%x=20*sin(2*pi*f.*a);    % use this for +-20
x=sin(2*pi*f.*a);
subplot(2,1,1), plot(a,f)
subplot(2,1,2), plot(a,x)
audiowrite('sound1.wav',x,8000);  % there are 8000 samples per sec
sound(x,8000);
end
% part b -- initialy the sound is slow then becoming fast due to fact that as we go
% from time 0 to 2 the time period of sin wave decreases which produces a
% fast sound
