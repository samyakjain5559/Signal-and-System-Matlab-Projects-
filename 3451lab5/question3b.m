function question3b
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a=0:(1/8000):1;
f=261.63;
%x=20*sin(2*pi*f.*a);    % use this for +-20
x=sin(2*pi*f.*a);
audiowrite('Cmajor1.wav',x,8000);  % there are 8000 samples per sec
sound(x,8000);
[y,fs] = audioread('Cmajor1.wav')
plot(abs(fft(y)))
xlabel('frequency')
ylabel('magnitude')
end
