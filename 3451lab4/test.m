function test
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
 wp = [6.238 62.83];
 ws = [0.62 376.99];
 f = 0:0.01:100;
 rp = -1 * mag2db(0.9);
 rs = 40;
 %[N,Wc] = buttord(wp,ws,rp,rs,'s');  % code taken from lecture slide of chapter 5
 [num,den] = butter(3,wp,'s');
 h = tf(num,den)
 [h,w] = freqs(num,den,2*pi*f);
 plot(w,abs(h));
 xlabel("frequency")
 ylabel("magnitude")
end

