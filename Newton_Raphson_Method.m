clc
clear all;
f = @(x) 2^x -5*x + 2;
syms x;
g = diff(f,x);
x0 = input ('Enter the value of first number:\n');
x1 = x0 - ((f(x0))/subs(g,x0));
iter = 1;
error = abs(x1 - x0);
epsilon = input ('Enter the required tolrence:\n');
while (error > epsilon)
    if (subs(g,x0) == 0)
        disp('NRM fails');
        break;
    end
    x0 = x1;
    x1 = x0 - ((f(x0))/subs(g,x0));
    error = abs(x1 - x0);
    iter = iter + 1;
end
fprintf('Final root is %f at %d iteration',x1,iter);