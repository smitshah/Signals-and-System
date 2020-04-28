%% Experiment No: 9

%{
    Name: Smit Shah
    PRN: 17070123090
    Batch: EB-2
%}

clc
clear all
close all

%% Q1. Convolution integral using built-in function "conv()"

% Plotting first signal x(t)
figure('Numbertitle','off','name','Smit_Convolution');
t = 0:0.001:4;
x = (t>=0)&(t<=2);
subplot(3,1,1)
plot(t,x)
axis([0,4,0,2])
title('x(t) signal')
xlabel('t')
ylabel('x(t)')

h = (t>=0)&(t<=3);
subplot(3,1,2)
plot(t,h)
axis([0,4,0,2])
title('h(t) signal')
xlabel('t')
ylabel('h(t)')

y= 0.001.*conv(x,h);
t1= 0:length(y)-1;
t2=0.001*t1;
subplot(3,1,3)
plot(t2,y)
title('convolution integral y(t)')
xlabel('t')
ylabel('y(t)')

%% Q2. Convolution integral without using built-in function

% First signal
figure('Numbertitle','off','name','Smit_Convolution without built-in');
t4=-4:0.001:4;
x=(t4>=0)&(t4<=2);
subplot(3,1,1);
plot(t4,x);
axis([-4,4,-0.5,2]);
grid on;
xlabel("t");
ylabel("x(t)");

% Second signal
h=(t4>=0)&(t4<=3);
subplot(3,1,2);
plot(t4,h);
axis([-4,4,-0.5,2]);
grid on;
xlabel("t");
ylabel("h(t)");

% Size of n, k, h
k=size(x);
sizek=k(1,2);
k=size(h);
sizeh=k(1,2);
n=sizek+size(h)-1;
sizen=n(1,2);

% Starting point of n
startx=0;
starth=-2;
startn=startx+starth;
startk=startx;

% y(n) for all n
i=0;
for n=startn:(startn+sizen-1)
    i=i+1;
    y(i,1)=n;
    y(i,2)=0;
    j=0;
    for k=startk:(startk+sizek-1)
        j=j+1;
        a=i-j+1;
        if a<1
            y(i,2)=y(i,2)+0;
        elseif a>sizeh
            y(i,2)=y(i,2)+0;
        else
            y(i,2)=y(i,2)+x(j)*h(a);
        end
    end
end
t5=0:0.001:16;
t5=y(:,1).*0.001;
g=y(:,2).*0.001;
subplot(3,1,3);
plot(t5,g);
xlabel("t");
ylabel("x(t)*h(t)");

%% Conclusion

%{
    In this experiment, we have to find the convolution integral of h(t) and x(t).
    We have found out that by two ways i.e. firstly without using built-in
    function and secondly by using built-in function and we have got same
    graph in both the cases.
%}