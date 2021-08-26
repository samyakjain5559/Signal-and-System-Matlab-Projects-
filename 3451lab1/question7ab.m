function question7ab
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x = [0:100];
xn = (1-exp(-0.01*x)).*cos((pi*x)/10);
subplot(3,1,1),stem(x,xn,'filled'),grid
title('parta')
%partb
yn = (1-exp(-0.01*(x/2))).*cos((pi*(x/2))/10);
subplot(3,1,2),stem(x,yn,'filled'),grid
title('partb yn')

zn = (1-exp(-0.01*(4*x))).*cos((pi*(4*x))/10);
subplot(3,1,3),stem(x,zn,'filled'),grid
title('partb zn')

end

