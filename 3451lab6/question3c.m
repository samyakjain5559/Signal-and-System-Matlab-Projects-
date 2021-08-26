function question3c
%UNTITLED6 Summary of this function goes here
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
%sound(x,8000);
[Y,FS]=audioread('Cscale.wav');
Y1 = Y(1:4000);
Y2 = Y(4001:8000);
Y3 = Y(8001:12000);
Y4 = Y(12001:16000);
Y5 = Y(16001:20000);
Y6 = Y(20001:24000);
Y7 = Y(24001:28000);
Y8 = Y(28001:32000);
plot(abs(fft(Y7)))
xlabel('frequency');
ylabel('DFT magitude');
z = [Y1,Y2]
length(Y)
%spectrogram(x,[],8000)
end

