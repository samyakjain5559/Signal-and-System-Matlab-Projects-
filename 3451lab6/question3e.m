function question3e
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
clear all
a=0:(1/8000):0.5;
f2 = [261.626;293.665;329.628;349.228;391.995;440;493.883;523.251]
%40,42,44,45,47,49,51,52
x=sin(2*pi*f2*a);
sub = reshape(x',8*length(a),1);
audiowrite('Cscale.wav',sub,8000);  % there are 8000 samples per sec
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
z = [Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8];
%zfft = zeros(size(z));
%for i = 1:8
 %   spect(:,i) = fft(z(:,i));
%end
for i = 1:8
    z = Y((i-1)*4000+1:(i)*4000);
    zfft=fft(z);
    spect(:,i) = zfft;
end
%plot(abs(fft(Y1)))
window_length = 4000;
fs = 8000;
figure
spect_mag=20*log10(abs(spect));
t=(0:window_length:(length(x)-window_length))/fs;
f=(1:window_length)*fs/window_length
imagesc(t, f, spect_mag);
axis xy
colormap(jet)
colorbar
length(spect)
%spectrogram(x,[],8000)
end
