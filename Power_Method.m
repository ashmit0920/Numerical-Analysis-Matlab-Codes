clc
clear all;
a = [1,2;2,1];
v0 = [1;0];
n = 300;  %no. of iteration
tol = 0.0001;
iter = 0;
for i = 1 : n
    v = a*v0;
    m = max(abs(v));
    v = v/m;
    iter = iter + 1;
    if(abs(v0 - v) < tol)
        break;
    end
    v0 = v;
end
fprintf('Eigen value is %f in iteration %d',m,iter);