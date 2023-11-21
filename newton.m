clc;
clear all;
syms x;
f=x^2 - 29;
df=2*x;
tol=0.0001;
x0=input('Enter initial value : ');
n=input('Enter no. of iterations : ');
if subs(df,x0)==0
    fprintf('Newton method failed.')
else
    for i=1:n
        f1=subs(f,x0);
        f2=subs(df,x0);
        x1=x0 - (f1/f2);
        if abs(x1-x0)<tol
            break;
        end
        x0=x1;
        if subs(df,x0)==0
            fprintf('Newton failed.')
        end
    end
end
fprintf('%.4f',x0)