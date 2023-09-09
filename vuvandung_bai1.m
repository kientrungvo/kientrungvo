%% Author: Vu Van Dung
% For problem 1 (lecture 4)
clear; clc;

global k m r dt
k=input('Do cung lo xo: ');
m=input('Khoi luong vat: ');
r=input('He so ma sat nhot: ');
dt=input('Thoi gian trich mau: ');
x0=input('Do dan ban dau: ');
v0=input('Van toc ban dau: ');
len=input('So chu ky quan sat: ');

x=zeros(1,len); x(1)=x0;
v=zeros(1,len); v(1)=v0;
for i=2:len
    [x(i),v(i)]=update(x(i-1),v(i-1));
end
energy = 0.5*k*x.^2+0.5*m*v.^2;


function [xN,vN]=update(x,v)
    global k m r dt
    xN=x+v*dt;
    vN=v+(-k/m*x-r/m*v)*dt;
end