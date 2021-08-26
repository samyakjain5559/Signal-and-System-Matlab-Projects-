function question3a
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
sound(x,8000);
[Y, FS]=audioread('Cscale.wav');
size(Y);      % there are 4000 points for each key as total is 32000 for 8 keys, also 4000 as 8000 samples is for 1 sec
Z = flip(Y);
pause
sound(Z,8000) 
audiowrite('CscaleZ.wav',Z,8000); 
[Y2, FS]=audioread('CscaleZ.wav');

subplot(2,1,1)
plot(abs(fft(Y)))
xlabel('frequency')
ylabel('magnitude1')
subplot(2,1,2)
plot(abs(fft(Y2)))  
xlabel('frequency')   % no cant tell the diffrence as DFT dont tell melody flow
ylabel('magnitude2')
end

