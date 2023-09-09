%% Author: Vu Van Dung
% For problem 3 (lecture 4)
clear; clc;
global a f
a=input('He so bo loc: ');
f=input('Tan so trich mau: ');
len=input('So chu ky quan sat: ');

x=sin(2*pi/f*(1:1:len))+1*randn(1,len);
y=zeros(1,len); 
y(1)=x(1);
for i=2:len
    y(i)=filter(x(i),y(i-1));
end

figure(1)
hold off
plot(x); hold on
plot(y);
grid on
legend('Raw','Filter');

function y=filter(x,yPre)
    global a f
    y=1/(1+a*f)*(a*f*yPre+x);
end
