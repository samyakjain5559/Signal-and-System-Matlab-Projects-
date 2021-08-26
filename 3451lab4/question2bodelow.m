function question2bodelow
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
wp2 = 62.8 % rad/sec 
ws2 = 376.8
rs2 = 40;
rp1 = -1 * mag2db(0.9);
[N2,Wc2] = buttord(wp2,ws2,rp1,rs2,'s');  % code taken from lecture slide of chapter 5
[num2,den2] = butter(N2,Wc2,'low','s');
h2 = tf(num2,den2)
bodeplot(h2)
end

