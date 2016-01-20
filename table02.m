x=linspace(-pi,pi,10); %Creating vector of 10 elements
y=sin(x);
list=[x;y];
fprintf('     x           y\n')
fprintf('%10.3f   %6.3f\n',list);
