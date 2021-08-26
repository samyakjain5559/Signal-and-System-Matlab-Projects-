function sqaurewave(V,f,n,t)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
p = zeros(1,length(t));
for i = 1:2:n
    p = p + (1/i)*sin(i*2*pi*f*t);
end
    p = ((4*V)/pi) * p;
    plot(t,p);   %unable to add fundamental wave
    hold
    ylabel('output')
    xlabel('time')
for i = 1:2:n
    f1(i,:) = (1/i)*sin(i*2*pi*f*t);
end
    title('square wave plot')
    plot(t,f1(1,:));
    legend('final wave','fundamental wave')
    grid;
end

