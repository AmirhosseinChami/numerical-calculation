% Numerical derivation using taylor series
% Amirhossein Chami
close;
clear all;
clc;
x = input('Enter list of abscissas : \n');
y = input('Enter list of ordinates : \n');
h = input('Enter step size : ');
if length(x) ~= length(y)
    disp('The number of x and y is not equal!');
    return;
end
xp = input('Enter the desired point for derivative (between abscissas)  : ');
n = length(x);
for i = 1:n
    if xp==x(i)
        break;
    end
end
for j = 1:n-1
    b = x(j+1) - x(j);
    if b ~= h
        disp('Bad intervals : The intervals between the input values ​​are not equal');
        return;
    end
end
d = input('Which derivative you want to compute : ');
if d==1
    if xp==0
       k = (y(2)-y(1))/h;
    elseif xp==x(n)
        k = (y(n)-y(n-1))/h;
    else
        k = (y(i+1)-y(i))/h;
    end
    fprintf(' f''(%f) = %f\n',xp,k);
elseif d==2 
    if i~=1 && i~=n
        k = (y(i-1)-2*y(i)+y(i+1))/(h^2);
    else
        disp('cannot calculate!');
        return;
    end
    fprintf(' f''''(%f) = %f\n',xp,k);
elseif d==3
    if ~(i-2 <1) && ~(i+2 >n)
        k = (y(i+2)-2*y(i+1)+2*y(i-1)-y(i-2))/(2*(h^3));
    else
        disp('cannot calculate!');
        return;
    end
    fprintf(' f''''''(%f) = %f\n',xp,k);
else
    disp('formula is not availabe!');
    return;
end

disp('Finish.')