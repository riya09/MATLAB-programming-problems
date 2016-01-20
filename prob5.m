m=input('Month-');
d=input('Day-');
y=input('Year-');

if mod(y,400)==0
    ld=1;
elseif mod(y,100)==0
    ld=0;
elseif mod(y,4)==0
    ld=1;
else
    ld=0;
end

day=d;
for j=1:m-1
    switch(j)
        case {1,3,5,7,8,10,12}
            day=day+31;

        case{4,6,9,11}
            day=day+30;
        case 2
            day=day+28+ld;
    end
end
fprintf('It is the %4dth day of the year.\n',day)
