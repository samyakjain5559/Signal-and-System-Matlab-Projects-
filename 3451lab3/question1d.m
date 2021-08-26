function question1d
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
coff = -25:1:25;
time = -4:0.001:4;
tolx = 0;
toly = 0;
for a = coff
    % Refrence using the equation of fourier series from chapter 4 pg 23
    % of lecture slides
    tolx = tolx + (2./(pi*(-4*a.^2 +1))).*exp(1i*a*pi*time);
    toly = toly + (2./(pi*(-4*a.^2 +1))).*exp(1i*a*pi*time)*10/(30.5+1i*a*pi);
end
subplot(2,1,1);
plot(time,toly);
xlabel('time')
ylabel('y(t)')
subplot(2,1,2);
plot(time,toly,time,tolx);
xlabel('time')
ylabel('y(t) and x(t)')
end

