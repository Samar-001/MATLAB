clc
clear all
f= @(x) (sin(x))^2;
t = [0,2*pi/7,4*pi/7,6*pi/7,8*pi/7,10*pi/7,12*pi/7,2*pi];
N=8;
for i=1:N
    y(i)=f(t(i));
end
p = 6;
for i=1:N
    l(i) = 1;
    for j=1:N
        if(j ~= i)
            l(i) = ((p-t(j))/(t(i)-t(j)))*l(i);
        end
    end
end

sum = 0;
for i=1:N
    sum = sum+(l(i)*y(i));
end
sum