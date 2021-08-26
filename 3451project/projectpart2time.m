function projectpart2time
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[Y, FS]=audioread('music_noisy.wav');   % Refrence: Matlab.com/frequencyfromfft
fy = fft(Y,2.^nextpow2(length(Y)));
fy = fy(1:2.^nextpow2(length(Y))/2);
plotfft=FS.*(0:2.^nextpow2(length(Y))/2-1)/2.^nextpow2(length(Y));
%plot(plotfft,abs(fy/max(fy)));
F=[1042,1061,2799,2833];  % it has filter stop from (2*14700)/40000 which is normalised form
A=[1,0,1];
Dev=[0.01,0.01,0.01];
fs=FS;                     % looks like this is problem but its seem ok as see screen shot s20
[N,Fi,Ai,W]=firpmord(F,A,Dev,fs);
h=firpm(N,Fi,Ai,W);
con = conv(Y,h);
%plot(con);
plot(abs(fft(con)))
%mul = fft(Y).*fft(h);
sound(con)
audiowrite('Filtered_audio.wav',con,8000)
%sound(Y)
end

