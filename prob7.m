%Bisection Method	
a=input('Enter the lower bound:');
b=input('Enter the upper bound:');
tol=input('Enter the tolerance value:');
f=@(x)x^3+5*x-5;
g=@(x)3*x^2+5;

for i=1:20
    x0=(a+b)/2;
    if f(x0)==0 || abs(b-a)<=tol
        break;
    elseif f(x0)*f(a)>0
        a=x0;
    else
        b=x0;
    end
end

fprintf('Using Bisection Method, the root is obtained at x=%5.3f with %3d iterations\n',x0,i)

%Newton-Raphson Method
xi=1.5;
for i=1:50
    xf=xi-(f(xi)/g(xi));
    if abs(xi-xf)<=tol
        break
    else
        xi=xf;
    end
end
fprintf('Using Newton-Raphson Method root is obtained at x=%10.2f with %3d iterations\n',xf,i)
