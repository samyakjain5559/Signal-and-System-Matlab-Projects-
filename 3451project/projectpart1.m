function projectpart1
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
F=[500,1500,2000,3000];
A=[0,1,0];
Dev=[0.001,0.01,0.01];
fs=8000;
[N,Fi,Ai,W]=firpmord(F,A,Dev,fs)
%To find the filter coefficients, use firpm command:
h=firpm(N,Fi,Ai,W);
%To plot frequency response : use freqz;
freqz(h,1);
end

