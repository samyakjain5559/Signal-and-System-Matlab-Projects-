function question7c
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%partc
x=[0:100];
yn = (1-exp(-0.01*(x/4))).*cos((pi*(x/4))/10);
subplot(2,1,1),stem(x,yn,'filled'),grid
title('partc yn')

zn = (1-exp(-0.01*x)).*cos((pi*x)/10);
subplot(2,1,2),stem(x,zn,'filled'),grid
title('partc zn')
% relation between xn and zn is they are same
end
