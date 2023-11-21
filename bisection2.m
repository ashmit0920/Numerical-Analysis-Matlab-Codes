a=input("Enter initial value : ");
b=input("Enter last value : ");
f=@(x) 2^x - 5*x + 2;
tol=0.0001;
if (f(a)*f(b)>0)
    fprintf('Roots do not lie in this interval.')
else
    c=(a+b)/2;
    e=abs(b-a);
    while (e>tol)
        if (f(a)*f(c)<0)
            b=c;
        else (f(b)*f(c)<0)
            a=c;
        end
        c=(a+b)/2;
        e=abs(b-a);
    end
end
disp(c)