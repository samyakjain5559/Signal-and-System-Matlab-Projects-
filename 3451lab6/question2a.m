function question2a
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
clear all
x1 = [2,1,0,0,0,0,1]
%n=7;  % make n = 16
fs = 1;
y=fft(x1);
nlen=length(y);
f=(0:1/nlen:1-1/nlen)*fs;  %fs is the sampling frequency
stem(abs(y));
end
% more noise in the fft output is introduced 
