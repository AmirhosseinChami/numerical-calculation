% Fixed Point Iteration Method
% made by Amirhossein Chami
close;
clear all;
clc;
syms x;
f(x) = input('Enter the function before isolating x : ');
g(x) = input('Enter the function after isolating x : ');
a = input('Enter a=');
b = input('Enter b=');
x0 = input('Enter x0 =');
d = input('enter  D=');
t = input(['choose termination condition: \n' ...
    '1)|f(x)|< \n' ...
    '2)|Xn-Xn-1|< \n' ...
    '3)times of iteration \n']);
if g(a)==0
    fprintf('the root is :%f',a);
elseif g(b)==0
    fprintf('the root is :%f',b);
end
switch t
    case 1
        n = input("|f(x)|< ") ;
        disp('***************************************');
        c = g(x0);
        i = 1;
        if abs(f(c))<n
            fprintf(' n = 1 \t x = %f\t g(x) =%f  ',c,f(c));
        end
        fprintf(' n = 0 \t  x =%f \t f(x) =%f \n',a,f(a));        
        while abs(f(c))>n
            fprintf(' n = %f \t  x =%f ',i,c);
            c = g(x0);
            fprintf(' f(x) = %f \n',f(c));
            x0 = c;
            i = i+1 ;
        end
    case 2
        n = input("|Xn-Xn-1|< ") ;
        disp('***************************************');
        c = g(x0);
        i = 1 ;
        if abs(x0-c)<n
            fprintf(' n = 1 \t x = %f\t f(x) =%f  ',c,f(c));
        end 
        fprintf(' n = 0 \t  x =%f \t f(x) =%f \n',a,f(a));
        while true
            fprintf(' n = %f \t  x =%f ',i,c)
            c = g(x0);
            fprintf(' f(x) = %f \n',f(c));
            if abs(x0-c) <n
                break;
            end
            x0 = c;
            i = i+1 ;
        end
    case 3
        n = input("times of iteration : ") ;
        disp('***************************************');
        c = g(x0);
        fprintf(' n = 0 \t  x =%f \t g(x) =%f \n',a,f(a));
        for i = 1:n
            fprintf(' n = %f \t  x =%f ',i,c);
            c = g(x0);
            fprintf(' g(x) = %f \n',f(c));
            x0 = c;
        end
    otherwise
        disp('choose between the given options!');
        return;
end
% end of the switch case for termination condition


j=0;
if abs(c)>=1
    w=c ;
    j=1;
    while w > 0 
        w=w/10;
        j=j+1;
    end
end
fprintf(' your final answer is =  ')
vpa(c,d+j)
disp(' finish . ')
