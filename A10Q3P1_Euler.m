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

for i = 1:n
    x(i+1) = x(i) + h;
    y(i+1) = y(i) + h*f(x(i),y(i));
end
x
y