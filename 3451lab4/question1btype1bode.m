function question1btype1bode
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
 wp = 15;
 ws = 20;
 rp = -1 * mag2db(0.9);
 rs = -1 * mag2db(0.15);
 [N,Wn] = cheb1ord(wp,ws,rp,rs,'s');  % code taken from lecture slide of chapter 5
 [num,den] = cheby1(N,rp,Wn,'s');
 h = tf(num,den)
 bode(h)
 [h,w] = freqs(num,den);
end
