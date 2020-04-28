%% Experiment No: 8

%{
    Name: Smit Shah
    PRN: 17070123090
    Batch: EB-2
%}

clc
clear all
close all

%% Q1. Find convolution of h(t)*x(t) without using built-in function

x=[2,2,2,2];
h=[1,2,3];
a=length(x);
b=length(h);
n=a+b-1;
y=zeros(1,n);
l=1:n;
for i=0:n
    for k=0:n
        if((i-k+1)>0 && (i-k+1)<=b && (k+1)<=a)
            y(i+1)=y(i+1)+x(k+1).*h(i-k+1);
        else
        end
    end
end
fprintf('The value of y(n) is:');
disp(y);
figure('Name', 'Convolution without in-built function')
stem(l,y);
ylabel('Y(n)');
xlabel('n');
title('Convolution of Two Signals in Discrete Time');
axis([0 7 0 13])

%% Q2. Find convolution of h(t)*x(t) using built-in function

figure('Name', 'Convolution with in-built function')
ans=conv(x,h)
stem(l,ans)
ylabel('Y(n)');
xlabel('n');
title('Convolution of Two Signals in Discrete Time');
axis([0 7 0 13])

%% Conclusion

%{
    In this experiment, we have to find the convolution of h(t) and x(t).
    We have found out that by two ways i.e. firstly without using built-in
    function and secondly by using built-in function and we have got same
    graph in both the cases.
%}