syms x real
f=x^3-3*x^2+x-2;%defining the function
f1=diff(f,x);%first derivative
f2=diff(f1,x);
critical=solve(f1,x)%solving for critical point
inflection=solve(f2,x)
increase=solve(f1>0,x)
decrease=solve(f1<0,x)
concave_up=solve(f2>0,x)
concave_down=solve(f2<0,x)
h=ezplot(f)
set(h,'Color','b')%setting color of ezplot
hold on
g=ezplot(f1)
set(g,'Color','g')
hold on
j=ezplot(f2)
set(j,'Color','r')
hold on
plot(double(critical), double(subs(f,critical)),'r*',double(inflection), double(subs(f,inflection)),'y*')
legend('f(x)','f''(x)','f''''(x)')
xlabel('x'),ylabel('y'),title('Graph of function x^3-3x^2+x-2')
hold off
