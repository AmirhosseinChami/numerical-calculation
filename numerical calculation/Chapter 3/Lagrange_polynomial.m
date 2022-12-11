% Lagrange Polynomial
% Amirhossein Chami
close;
clear all;
clc;
x = input('Enter list of abscissas : \n');
y = input('Enter list of ordinates : \n');
if length(x) ~= length(y)
    disp('The number of x and y is not equal!');
    return;
end
xp = input('Enter point of appronimation : ');
n = length(x);
L = zeros(n,n);
for i = 1:n
    V=1;
    for j = 1:n
        if i~=j
            V=conv(V,poly(x(j)))/(x(i) - x(j));
        end
    end
    L(i,:) = V*y(i);
end
p = sum(L);
fprintf('This is the equation : ');
disp(poly2sym(p));
A = polyval(p,xp);
fprintf('Approximate value at given data point is : %f\n',A);
disp('Finish.');
j=0;
if abs(xn)>=1
    w=xn ;
    j=1;
    while w > 0 
        w=w/10;
        j=j+1;
    end
end
fprintf(' your final answer is =  ')
vpa(xn,d+j)
disp(' finish . ')