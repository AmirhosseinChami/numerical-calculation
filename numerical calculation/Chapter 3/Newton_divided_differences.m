% Newton Divided Difference Interpolation (Newton's formula)
% made by Amirhossein Chami
close;
clear all;
clc;
x = input('Enter list of abscissas : ');
y = input('Enter list of ordinates : ');
p0 = input('Enter point of appronimation : ');
if length(x) ~= length(y)
    disp('The number of x and y is not equal!');
    return;
end
n = length(x);
% begging of table calculations
F = zeros(n,n);
F(:,1) = y;
for j = 2:n
    for i = j:n
        F(i,j) = (F(i,j-1) - F(i-1,j-1))/(x(i) - x(i-j+1));
    end
end
N = zeros(n,n+1);
N(:,1) = x';
for j = 2:n
    for i = 1:n
        N(i,j) = F(i,j-1);
    end
end
fprintf('Table of Newton divided differences :\n');
disp(N);
% end of table
% begging of interpolation equation calculation
C = F(n,n);
for k = n-1:-1:1
    C = conv(C,poly(x(k)));
    m = length(C);
    C(m) = C(m) + F(k,k);
end
% end of interpolation equation calculation
fprintf('This is the equation : \n');
disp(poly2sym(C));
A = polyval(C,p0);
fprintf('Approximate value at given data point is : %f\n',A);
disp('Finish.')
