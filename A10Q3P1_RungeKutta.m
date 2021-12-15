clc
clear all;

a = 0;
b = 1;
t = a;
h = 0.2;
n = (b-a)/h;
y = zeros(size(n));
x(1) = 0;
y(1) = 1;
f = @(x,y) -y+2*cos(x);

for i=1:n
    k1=h*f(x(i),y(i));
    k2=h*f((x(i) + h/2),(y(i) + k1/2));
    k3=h*f((x(i) + h/2),(y(i) + k2/2));
    k4=h*f((x(i) + h),(y(i) + k3));
    y(i+1)=y(i) + (1/6)*(k1 + (2*k2) + (2*k3) + k4)
    x(i+1)=x(i)+h;
end
x
y