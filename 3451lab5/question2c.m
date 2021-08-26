function question2c
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=0:(1/8000):0.5;
x =0;
n=[40,42,44,45,47,49,51,52];
%40,42,44,45,47,49,51,52
for t=1:length(n)
    f=(2.^((n(t)-49)/12))*440;
    x=[x,sin(2*pi*f.*a)];
end
audiowrite('Cscale.wav',x,8000);  % there are 8000 samples per sec
%subplot(2,1,1), plot(a,f)
%subplot(2,1,2), plot(a,x)
[Y, FS]=audioread('Cscale.wav');
sound(Y,4000)
pause
sound(Y,8000)
pause
sound(Y,16000)
end
% they do not sound same as the frequency increases the pace and amplitude of the c scale
% increases as well
