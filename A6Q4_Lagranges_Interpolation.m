clc
clear all
x = [0,8,16,24,32,40];
f = [14.621,11.843,9.870,8.418,7.305,6.413];
N = 6;
p = 15;
for i=1:N
    l(i) = 1;
    for j=1:N
        if(j ~= i)
            l(i) = ((p-x(j))/(x(i)-x(j)))*l(i);
        end
    end
end

sum = 0;
for i=1:N
    sum = sum+(l(i)*f(i));
end
sum