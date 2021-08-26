function test
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
x1 = [-1 2 -1 0 0 0 0];
x2 = [-1 3 2 3 -1 0 0];
N = 7;
X1 = fft(x1)
X2 = fft(x2)
X = X1.*X2;
y = ifft(X)
end
