function test2
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
a=0:(1/8000):0.5;
x=0;
n=[40,42,44,45,47,49,51,52];
%40,42,44,45,47,49,51,52
for t=1:length(n)
    f=(2.^((n(t)-49)/12))*440;
    x=[x,sin(2*pi*f.*a)];
end
%audiowrite('Cscale.wav',x,8000);  % there are 8000 samples per sec
[Y,FS]=audioread('Cscale.wav'); % going left to right
sound(Y)
spectrogram(Y,[],8000)
end
