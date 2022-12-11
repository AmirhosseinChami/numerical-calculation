%Bisection Method
% Amirhossein Chami
clear;
clc;
syms x;
f(x) = input('f(x)=');
a = input('Enter a=');
b = input('Enter b=');
d = input('enter  D=');
t = input(['choose termination condition: \n' ...
    '1)|f(x)|< \n' ...
    '2)|Xn-Xn-1|< \n' ...
    '3)times of iteration \n']);
if f(a)==0
    fprintf('the root is :%f',a);
elseif f(b)==0
    fprintf('the root is :%f',b);
end

switch t
    case 1
        n = input("|f(x)|< ") ;
        disp('***************************************');
        c = (a+b)/2 ;
        i = 1 ;
        if abs(f(c))<n
        fprintf(' n = 1 \t a = %f\t b=%f \t f(x) =%F  ',a,b,f(c));
        end 
        while abs(f(c))>n
            fprintf(' n = %f \t  a =%f \t b =%f ',i,a,b)
            c = (a+b)/2 ;
            if f(a)*f(c) <0
                b = c;
            elseif f(b)*f(c) <0
                a = c;
            end
        fprintf(' x =%f \t f(x) = %f \n',c,f(c))
        i = i+1 ;
        end
    case 2
        n = input("|Xn-Xn-1|< ") ;
        disp('***************************************');
        c = (a+b)/2 ;
        i = 1 ;
        if abs(a-c)<n
        fprintf(' n = 1 \t a = %f\t b=%f \t f(x) =%F  ',a,b,f(c));
        end 
        while true
            fprintf(' n = %f \t  a =%f \t b =%f ',i,a,b)
            c = (a+b)/2 ;
            if f(a)*f(c) <0
                b = c;
            elseif f(b)*f(c) <0
                a = c;
            end
        fprintf(' x =%f \t f(x) = %f \n',c,f(c))
        if abs(a-c)<n && abs(b-c) <n
            break;
        end
        i = i+1 ;
        end
    case 3
        n = input("times of iteration :") ;
        disp('***************************************');
        c = (a+b)/2 ;
        for i = 1:n
            fprintf(' n = %f \t  a =%f \t b =%f ',i,a,b)
            c = (a+b)/2 ;
            if f(a)*f(c) <0
                b = c;
            elseif f(b)*f(c) <0
                a = c;
            end
        fprintf(' x =%f \t f(x) = %f \n',c,f(c))
        end
    otherwise
        fprintf('Choose one of the three termination conditions given')
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