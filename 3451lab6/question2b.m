function question2b
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x1 = [5,1,1,1,1]
%n=5;
fs = 1;
y=fft(x1);
nlen=length(y);
f=(0:1/nlen:1-1/nlen)*fs;  %fs is the sampling frequency
stem(abs(y));
end

