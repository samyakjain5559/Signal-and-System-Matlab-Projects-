function question2c
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x1 = [1,3,3,0,3,3]
n=6;
fs = 1;
y=fft(x1,n);
nlen=length(y);
f=(0:1/nlen:1-1/nlen)*fs;  %fs is the sampling frequency
stem(abs(y));
end
