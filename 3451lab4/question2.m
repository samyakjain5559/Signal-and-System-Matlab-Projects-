function question2
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%for high pass filter
wp1 = 6.238 % rad/sec 
ws1 = 0.628
rs1 = 20;
rp1 = -1 * mag2db(0.9);
[N1,Wc1] = buttord(wp1,ws1,rp1,rs1,'s');  % code taken from lecture slide of chapter 5
[num1,den1] = butter(N1,Wc1,'high','s');
h1 = tf(num1,den1)
freq = 0:0.01:100;
[h1,w1] = freqs(num1,den1,6.28*freq);
% for band pass filter
 wp = [6.238 62.83];
 ws = [0.62 376.99];
 rp = -1 * mag2db(0.9);
 rs = 40;
 rs1 = 20;
 [N,Wc] = buttord(wp,ws,rp,rs,'s');  % code taken from lecture slide of chapter 5
 [num,den] = butter(N,Wc,'s');
 h = tf(num,den)
 [h,w] = freqs(num,den);
% for low pass filter
wp2 = 62.8 % rad/sec 
ws2 = 376.8
rs2 = 40;
[N2,Wc2] = buttord(wp2,ws2,rp1,rs2,'s');  % code taken from lecture slide of chapter 5
[num2,den2] = butter(N2,Wc2,'low','s');
h2 = tf(num2,den2)
[h2,w2] = freqs(num2,den2,6.28*freq);
 plot(freq,abs(h1),freq,abs(h2));
 %plot(w,abs(h));
 xlabel("frequency in HZ")
 ylabel("magnitude")
 legend('high pass butter worth filter','low pass butter worth filter')
end

