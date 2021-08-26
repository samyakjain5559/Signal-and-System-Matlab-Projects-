function question3f
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=0:(1/8000):2;
f=150*a;
%x=20*sin(2*pi*f.*a);    % use this for +-20
x=sin(2*pi*f.*a);
%subplot(2,1,1), plot(a,f)
%subplot(2,1,2), plot(a,x)
audiowrite('sound1.wav',x,8000);  % there are 8000 samples per sec
sound(x,8000);

x2=20*sin(2*pi*f.*a);
subplot(2,1,1), plot(a,f)
subplot(2,1,2), plot(a,x2)
audiowrite('sound2.wav',x2,8000);  % Yes a warning came for data clipping and both sound diffrent and sound
                                   % got clipped which lead to distotion of the orginal sound
pause
sound(x2,8000);
end

