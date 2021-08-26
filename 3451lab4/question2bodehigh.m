function question2bodehigh
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
wp1 = 6.28 % rad/sec 
ws1 = 0.628
rs1 = 20;
rp1 = -1 * mag2db(0.9);
[N1,Wc1] = buttord(wp1,ws1,rp1,rs1,'s');  % code taken from lecture slide of chapter 5
[num1,den1] = butter(N1,Wc1,'high','s');
h1 = tf(num1,den1)
freq = 0:0.01:100;
h1freq = freqs(num1,den1,6.28*freq);
% for band pass filter
 wp = [6.238 62.83];
 ws = [0.62 376.99];
 rp = -1 * mag2db(0.9);
 rs = 40;
 [N,Wc] = buttord(wp,ws,rp,rs,'s');  % code taken from lecture slide of chapter 5
 [num,den] = butter(N,Wc,'s');
 h = tf(num,den)
bodeplot(h1)
end
