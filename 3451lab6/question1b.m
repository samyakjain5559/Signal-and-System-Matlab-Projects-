function question1b
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
X = [2,1,1,0,1];
M = 6;
temp = zeros(1,5);
xfft = fft(X);
g = fftshift(xfft)
for i = 1:5
    temp(i) = g(6-i);
end
    conjugal = abs(temp)
    abs(g)
end