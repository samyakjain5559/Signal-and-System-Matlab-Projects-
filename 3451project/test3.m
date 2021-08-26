function filternoise
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[Y, FS]=audioread('music_noisy.wav');   % Refrence: Matlab.com/frequencyfromfft
fy = fft(Y,2.^nextpow2(length(Y)));
fy = fy(1:2.^nextpow2(length(Y))/2);
plotfft=FS.*(0:2.^nextpow2(length(Y))/2-1)/2.^nextpow2(length(Y));
plot(plotfft,abs(fy/max(fy)));
F=[1024,1043,1136,1161];  % it has filter stop from (2*14700)/40000 which is normalised form
A=[1,0,1];
Dev=[0.01,0.01,0.01];
fs=FS;                     % looks like this is problem but its seem ok as see screen shot s20
[N,Fi,Ai,W]=firpmord(F,A,Dev,fs);
h=firpm(N,Fi,Ai,W);
con1 = conv(Y,h);

F=[2725,2736,2781,2791];  % it has filter stop from (2*14700)/40000 which is normalised form
A=[1,0,1];
Dev=[0.01,0.01,0.01];
fs=FS;                     % looks like this is problem but its seem ok as see screen shot s20
[N,Fi,Ai,W]=firpmord(F,A,Dev,fs);
h=firpm(N,Fi,Ai,W);
con = conv(con1,h);
%plot(con);
%plot(abs(fft(con)))
fy = fft(con,2.^nextpow2(length(con)));
fy = fy(1:2.^nextpow2(length(con))/2);
plotfft=FS.*(0:2.^nextpow2(length(con))/2-1)/2.^nextpow2(length(con));
%plot(plotfft,abs(fy/max(fy)));
sound(con)
%sound(Y)
%plot(abs(fft(Y)))
end


