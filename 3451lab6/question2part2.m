function question2part2
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
clear all
x1 = [1,3,3,0,3,3]
n = 16;
fs = 2;
y=fft(x1,n);
nlen=length(y); 
f=(0:1/nlen:1-1/nlen)*fs;  %fs is the sampling frequency
%stem(abs(f));
stem(f,y)
end

