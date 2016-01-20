% Conversion of Temperature
farenheit=78:104;
celsius=(farenheit-32).*(5/9); %Using formula to convert to celsius
list1=[farenheit;celsius];
fprintf(' Farenheit     Celsius\n')
fprintf(' %10.3f %10.3f\n',list1)
 
%Length Conversion
inch=0:10;
centi=inch.*2.54;
list2=[inch;centi];
fprintf('  Inches      Centimeter\n')
fprintf(' %10.3f  %10.3f\n',list2)
