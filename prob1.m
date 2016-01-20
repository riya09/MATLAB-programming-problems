list=[-90 34 45 12 67 92 65 56];
len=length(list);
Sum=0;
for i=1:len
    Sum=Sum+list(i);
end
average=Sum/len; %Calculating the average of the set of numbers
std_devSum=0;
for i=1:len
std_devSum= std_devSum + ((list(i)-average)^2)/(len-1); %Using the formula of standard deviation
end
std_dev=sqrt(std_devSum);
fprintf('The summation of the given data is %10.3f.\n The mean of the data is %10.3f.\n The standard deviation is %10.3f.\n',Sum,average,std_dev)
