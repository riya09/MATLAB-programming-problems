%Storing the names in an array
week={'Sunday','Monday','Tueday','Wednesday','Thursday','Friday','Saturday'};
day=input('Enter the ith day-')
p=mod(day,7);
if p==0
    week(7)
else	
    week(p)
end
