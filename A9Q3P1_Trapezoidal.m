clc
clear all;

a = -0.25;
b = 0.25;
n = 4;
h = (b-a)/n;
sum = 0;

f = @(x) (cos(x))^2;

for i = 1:n-1
    x = a + (i*h);
    
    sum = sum +f(x);
end

sum = (2*sum + f(a) + f(b)) * h/2;

sum