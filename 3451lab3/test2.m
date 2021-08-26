function test2
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
coff = 1:10;
a0 = (1-cos(2))./2;
an = ((cos(2)-1).*2)./(2*((pi*coff).^2-1));
bn = (coff.*pi.*2*sin(2))./(1-(coff*pi).^2);  % can put in x(a)
time = -4:0.01:4;
h = 10./(30.5+j*(coff*pi));
for a = 1:length(time)
    % y = x*h refring to page 48 of chapter 3 of lecture note
    x(a) = (1-cos(2))./2*10*30.5+sum(an.*abs(h).*cos(coff*pi*time(a)+angle(h))+bn.*abs(h).*sin(coff*pi*time(a)+angle(h)));
end
%x = sum((4./(pi.*n)) .* sin(n.*2.*pi.*t));
%h = 10 .* exp(-1*30.5*t) .* heaviside(t);
%y = conv(x,h);
plot(time,x);
end

