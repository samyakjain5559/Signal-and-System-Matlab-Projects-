function projectpart2freq
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[Y, FS]=audioread('music_noisy.wav');
fy = fft(Y,2.^nextpow2(length(Y)));  % Refrence: Matlab.com/frequencyfromfft
fy = fy(1:2.^nextpow2(length(Y))/2); % We need only half of FFT values
plotfft=FS.*(0:2.^nextpow2(length(Y))/2-1)/2.^nextpow2(length(Y));  % finding x axis value
%plot(plotfft,abs(fy/max(fy)));    % Normalised ploting of FFT of data Y

F=[1042,1061,2799,2833];  % Filter which filter out both high magnitude frequencies from 1061 HZ to 2799 Hz
A=[1,0,1];
Dev=[0.01,0.01,0.01];
fs=FS;                     % Sampling frequency
[N,Fi,Ai,W]=firpmord(F,A,Dev,fs);
h=firpm(N,Fi,Ai,W);
fh = fft(h,2.^nextpow2(length(Y)));
fh = fh(1:2.^nextpow2(length(Y))/40);  % converting the filter value into frequency domain
mul = (fh).*(fy);          % Performing element wise multiplication of frquency domain value of DATA Y and frequency rsponse of filter
plot(abs(mul));            % ploting filtered value
xlabel('Frequency in Hz')
ylabel('Magnitude')
%sound(abs(mul))
end

