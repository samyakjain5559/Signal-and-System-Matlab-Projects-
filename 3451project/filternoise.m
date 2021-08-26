function filternoise
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[Y, FS]=audioread('music_noisy.wav');   
fy = fft(Y,2.^nextpow2(length(Y)));  % Refrence: Matlab.com/frequencyfromfft
fy = fy(1:2.^nextpow2(length(Y))/2); % We need only half of FFT values
plotfft=FS.*(0:2.^nextpow2(length(Y))/2-1)/2.^nextpow2(length(Y));  % finding x axis value
%plot(plotfft,abs(fy/max(fy)));    % Normalised ploting of FFT of data Y
F=[1024,1043,1136,1161];  % Filter 1 from frequency 1043 to 1161 bandstop frequency
A=[1,0,1];
Dev=[0.01,0.01,0.01];      % Allowed Ripple
fs=FS;                     % Sampling frequency
[N,Fi,Ai,W]=firpmord(F,A,Dev,fs);
h=firpm(N,Fi,Ai,W);
con1 = conv(Y,h);          % first convolution between filter and data to remove 1106 Hz frequency

F=[2725,2736,2781,2791];  % Filter 2 from frequency 2725 to 2791 bandstop frequency
A=[1,0,1];         
Dev=[0.01,0.01,0.01];     % Allowed Ripple
fs=FS;                    % Sampling frequency
[N,Fi,Ai,W]=firpmord(F,A,Dev,fs);
h=firpm(N,Fi,Ai,W);
%freqz(h,1);
con = conv(con1,h);         % 2nd convolution between filter and ouputted data to remove 2756 Hz frequency
%plot(Y)
%plot(con);
%plot(abs(fft(con)))
fy = fft(con,2.^nextpow2(length(con))); 
fy = fy(1:2.^nextpow2(length(con))/2);
plotfft=FS.*(0:2.^nextpow2(length(con))/2-1)/2.^nextpow2(length(con));   % values for x axis
plot(plotfft,abs(fy/max(fy)));      % plotting the frequency response of filtered output after normalisation
xlabel('Time domain')
ylabel('Magnitude')
audiowrite('Filtered_audio.wav',con,8000)
sound(con)
%sound(Y)
end


