birth_date=input('Enter birth date:');
birth_month=input('Enter birth month:');
birth_year=input('Enter birth year:');
current_date=input('Enter current date:');
current_month=input('Enter current month:');
current_year=input('Enter current year:');
sum1=0;
for n=birth_year:current_year
    if mod(n,400)==0
        ld=1;
    elseif mod(n,100)==0
        ld=0;
    elseif mod(n,4)==0
        ld=1;
    else
        ld=0;
    end
    sum1=sum1+365+ld;
end
day=0;
for j=1:birth_month-1
    switch(j)
        case {1,3,5,7,8,10,12}
            day=day+31;
        case{4,6,9,11}
            day=day+30;
        case 2
            day=day+28;
    end
end
sum1=sum1-day-birth_date;
days=0;
for j=current_month:12
    switch(j)
        case {1,3,5,7,8,10,12}
            days=days+31;
        case{4,6,9,11}
            days=days+30;
        case 2
            days=days+28;
    end
end
sum1=sum1-days+current_date;
fprintf('The total number of days since his/her birth:%10\n',sum1)
