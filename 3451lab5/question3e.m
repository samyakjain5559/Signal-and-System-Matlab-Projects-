function question3e
a=0:(1/8000):1;
f=261.63;
%x=20*sin(2*pi*f.*a);    % use this for +-20
x=sin(2*pi*f.*a);
audiowrite('Cmajor1.wav',x,8000);  % there are 8000 samples per sec
[CY1,fs] = audioread('Cmajor1.wav')
size(CY1)
sound(CY1,8000);
% 2nd 
x2=20*sin(2*pi*f.*a);
audiowrite('Cmajor2.wav',x2,8000);  % there are 8000 samples per sec
[CY2,fs] = audioread('Cmajor2.wav');
pause
sound(CY2,8000);

subplot(2,1,1)
plot(abs(fft(CY1)))
xlabel('frequency')
ylabel('magnitude1')
subplot(2,1,2)
plot(abs(fft(CY2)))  % Cy2 is louder and frequency is distributed as compare to CY1 as shown in the plot after clipping
xlabel('frequency')
ylabel('magnitude2')
end

