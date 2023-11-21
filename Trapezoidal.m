clc
clear all;
f = @(x) 1/(1+x);
a = 1;
b = 2;
n = 20;
h = (b-a)/n;
sum = (h/2)*f(a);
for i = 1 : n-1
    k = a + i*h;
    sum = sum + h*f(k);
end
sum = sum + (h/2)*f(b);
fprintf('Value of given function 1/(1+x) from %d to %d is %f',a,b,sum);