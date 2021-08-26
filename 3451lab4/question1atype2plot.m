function question1atype2plot
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
 wp = 10;
 ws = 20;
 rp = -1 * mag2db(0.9);
 rs = -1 * mag2db(0.15);
 [N,Wn] = cheb2ord(wp,ws,rp,rs,'s');  % code taken from lecture slide of chapter 5
 [num,den] = cheby2(N,rs,Wn,'s');
 h = tf(num,den)
 [h,w] = freqs(num,den);
 plot(w,abs(h));
 xlabel("frequency")
 ylabel("magnitude")
end

