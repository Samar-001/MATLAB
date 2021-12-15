clc
clear all

A = [4 1 -1 1 ; 1 4 -1 -1 ; -1 -1 5 1 ; 1 -1 1 3]
B = [-2 -1 0 1];
x = [0 0 0 0];
tol = 10^(-5);
n = 4;
w = 1.2;
err = 1;

while  norm(err,inf)>=tol
    x1=x;
    for i = 1 : n
        sum = 0;
        for j = 1 : i-1
            sum = sum+A(i,j)*x(j);
        end
        for j = i+1 : n
            sum = sum+A(i,j)*x1(j);
        end
        x(i) = w*((B(i)-sum)/A(i,i)) + (1-w)*x(i);
        err = x-x1;
    end
end
disp(x)