% Newton's Method
% made by Amirhossein Chami
close;
clear all;
clc;
syms x;
f(x) = input('f(x)=');
a = input('Enter a=');
b = input('Enter b=');
d = input('enter  D=');
xn = input('Enter x0=');
t = input(['choose termination condition: \n' ...
    '1)|f(x)|< \n' ...
    '2)|Xn-Xn-1|< \n' ...
    '3)times of iteration \n']);
if f(xn)==0
    fprintf('the root is :%f',xn);
end
switch t
    case 1
        n = input("|f(x)|< ") ;
        disp('***************************************');
        g(x)=diff(f(x));
        c=xn-( f(xn)/g(xn) ) ;
        i = 1 ;
        if abs(f(xn))<n
        fprintf(' n = 1 \t x = %f\t f(x) =%f  ',xn,f(xn));
        end 
        while abs(f(c))>n
            fprintf(' n = %f \t  x =%f ',i,xn)
            c=xn-( f(xn)/g(xn) ) ;
            fprintf(' f(x) = %f \n',f(xn))
            xn = c;
            i = i+1 ;
        end
    case 2
        n = input("|Xn-Xn-1|< ") ;
        disp('***************************************');
        g(x)=diff(f(x));
        c=xn-( f(xn)/g(xn) ) ;
        i = 1 ;
        if abs(c-xn) <n
        fprintf(' n = 1 \t x = %f\t f(x) =%f  ',xn,f(xn));
        end 
        while true
            fprintf(' n = %f \t  x =%f ',i,xn)
            g(x)=diff(f(x));
            c=xn-( f(xn)/g(xn) ) ;
            fprintf(' f(x) = %f \n',f(xn))
            if abs(c-xn)<n
                break;
            end
            xn = c;
            i = i+1 ;
        end
    case 3
        n = input("times of iteration : ") ;
        disp('***************************************');
        g(x)=diff(f(x));
        c=xn-( f(xn)/g(xn) ) ;
        for i = 1:n
            fprintf(' n = %f \t  x =%f ',i,xn)
            g(x)=diff(f(x));
            c=xn-( f(xn)/g(xn) ) ;
            fprintf(' f(x) = %f \n',f(xn))
            xn = c;
        end
end
% end of the switch case for termination condition


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
