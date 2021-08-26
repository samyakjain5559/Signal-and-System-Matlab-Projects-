function question1b
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
coffin = 1:1:40;
time = -4:0.001:4;
x = 0;
for coff = coffin
    x = x +(4*cos(coff*pi*time))/(pi*(-4*coff^2 +1));
    % Refrence using the equation of fourier series from chapter 4 pg 23
    % of lecture slides
end
tol = 0.637 + x; 
plot(time,tol)
xlabel('time')
ylabel('magnitude')

