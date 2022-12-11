% Newton backward interpolation
% made by Amirhossein Chami
close;
clear all;
clc;
x = input('Enter list of abscissas : ');
y = input('Enter list of ordinates :');
p0 = input('Enter point of approximation : ');

if length(x) ~= length(y)
    disp('The number of x and y is not equal!');
    return;
end
n = length(x);
% begging of table calculations
h = x(2)-x(1);
for e = 1:n-1
    b = x(e+1) - x(e);
    if b ~= h
        disp('Bad intervals : The intervals between the input values ​​are not equal');
        return;
    end
end
F = zeros(n,n);
F(:,1) = y;
for j = 2:n
    for i = 1:n-j+1
        F(i,j) = F(i+1,j-1) - F(i,j-1);
    end
end
N = zeros(n,n+1);
N(:,1) = x';
for j = 2:n
    for i = 1:n-j+2
        N(i,j) = F(i,j-1);
    end
end
fprintf('Table of Newton divided differences :\n');
disp(N);
% end of table
% begging of interpolation equation calculation
C = F(n,n);
for k = n-1:-1:1
    p = poly(x(n)/h);
    p(2) = p(2) + (k-1);
    C = conv(C,p)/k;
    m = length(C);
    C(m) = C(m) + F(n-k+1,k);
end
fprintf('This is the equation : ');
disp(poly2sym(C));
A = polyval(C,p0);
fprintf('Approximate value at given data point is : %f\n',A);
disp('Finish.');
