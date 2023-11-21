clc
clear all;
x = [2 3 5];
y = [5 7 8];
p = 4;
n = length(x);
a = 0;
for i = 1 : n
    l = 1;
    for j = 1 : n
        if(i ~= j)
            l = ((p - x(j))/(x(i) - x(j))) * l;
        end
    end
    a = a + (y(i) * l);
    %a = y * l';
end
fprintf('Value at x=4 is %f\n',a);