function question1c
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
coff = -10:1:10;
Fn = 2./(pi*(-4*coff.^2 +1));
subplot(2,1,1);
stem(-10:10,abs(Fn))
xlabel('terms(n)')
ylabel('magnitude')
subplot(2,1,2);
stem(-10:10,angle(Fn)*180/pi)
xlabel('terms(n)')
ylabel('phase')


