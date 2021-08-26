function test2
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[Y, FS]=audioread('music_noisy.wav');
nfft = length(Y);
nfft2 = 2.^nextpow2(nfft);
fy = fft(Y,nfft2);
fy = fy(1:nfft2/40);
%xfft=FS.*(0:nfft2/2-1)/nfft2;
%plot(xfft,abs(fy/max(fy)));
%h = fir1(46,[1095/FS/2,1110/FS/2],'bandpass');
F=[1042,1061,2799,2833];  % it has filter stop from (2*14700)/40000 which is normalised form
A=[1,0,1];
Dev=[0.01,0.01,0.01];
fs=FS;                     % looks like this is problem but its seem ok as see screen shot s20
[N,Fi,Ai,W]=firpmord(F,A,Dev,fs);
h=firpm(N,Fi,Ai,W);
fh = fft(h,nfft2); 
fh = fh(1:nfft2/40);  
mul = (fh).*(fy);
%con = conv(Y,h);
plot(abs(mul));
%plot(abs(fft(con)))
%sound(abs(mul))
%sound(Y)
end
