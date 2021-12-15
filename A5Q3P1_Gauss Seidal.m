clc
clear all
a = [10 8 -3 1 16;2 10 1 -4 9;3 -4 10 1 10;2 2 -3 10 11];
e = [1 1 1 1];
tol = 0.001;
n = 4;
x = [0 0 0 0];
o = 1.2;
 while norm(e,inf) >= tol
     xold = x;
     for i = 1:n
         sum = 0;
         for j = 1:n
             if i ~= j
                 sum = sum + a(i,j)*x(j);
             end
         end
     x(i) = (a(i,n+1)-sum)/a(i,i);
     e(i) = x(i)-xold(i);
     end
 end
disp(x)