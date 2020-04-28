%% Expriment No: 3

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2
%}

clc
clear all
close all

%% 1. Sine Wave

t=0:0.15:10;
n=0:0.15:10;
f=0.50;
f1=10*f;
x1=2*sin(2*pi*(f/f1)*n);
figure('numbertitle','off','Name','Smit_Sine Wave DT Signal')
stem(t,x1)
xlabel('n')
ylabel('x(n)')
title('Discrete sine wave')

%% 2. Unit Impulse Wave

t1=-1:0.1:1;
n1=-1:0.1:1;
impulse= t1==0;
figure('numbertitle','off','Name','Smit_Unit Impulse Wave DT Signal')
stem(n1,impulse,'k')
xlabel('n')
ylabel('x(n)')
title('Discrete unit impulse wave')

%% 3. Unit Step Wave

N=10;
n2=0:1:N-1;
x2=ones(1,N);
figure('numbertitle','off','Name','Smit_Unit Step Wave DT Signal')
stem(n2,x2)
xlabel('n')
ylabel('x(n)')
title('Discrete unit step wave')

%% 4. Unit Ramp Wave

n3=0:1:9;
x3=1*n3;
figure('numbertitle','off','Name','Smit_Unit Ramp Wave DT Signal')
stem(n3,x3)
xlabel('n')
ylabel('x(n)')
title('Discrete unit ramp wave')

%% 5. Unit Rectangular Pulse

figure('numbertitle','off','Name','Smit_Unit Rectangular Wave DT Signal')
%fs=10;
t=-10:1:10;
T=5;
s=rectpuls(t,T);
stem(t,s)
xlabel('n')
ylabel('x(n)')
title('Discrete Unit Rectangular wave')

%% 6. Traingular Pulse

t3=-5:1:5;
x4=tripuls(t3,3);
figure('numbertitle','off','Name','Smit_Triangular Wave DT Signal')
stem(t3,x4)
xlabel('n')
ylabel('x(n)')
title('Discrete triangular wave')

%% 7. Signum

figure('numbertitle','off','Name','Smit_Signum Wave DT Signal')
x5 = [-5 -4 -3 -2 -1 0 1 2 3 4 5];
y = sign(x5);
stem(x5,y)
ylim([-2 2])
xlabel('n')
ylabel('x(n)')
title('Discrete Signum wave')

%% 8. Sinc

figure('numbertitle','off','Name','Smit_Sinc Wave DT Signal')
x6=linspace(-10,10,20);
y1=sinc(x6);
stem(x6,y1)
xlabel('n')
ylabel('x(n)')
title('Continuous Sinc wave')

%% 9. Real Exponential

% (a)Increasing
figure('numbertitle','off','Name','Smit_Exponential Increasing Wave DT Signal')
a=0.5;
x7=-5:1:10;
y2=exp(a*x7);
stem(x7,y2)
xlabel('n')
ylabel('x(n)')
title('Discrete Exponential Increasing wave')

% (b)Decreasing
figure('numbertitle','off','Name','Smit_Exponential Decreasing Wave DT Signal')
a1=-0.5;
y3=exp(a1*x7);
stem(x7,y3)
xlabel('n')
ylabel('x(n)')
title('Discrete Exponential Decreasing wave')

%% 10. Complex Exponential

% (a)Complex exponential with real part greater than zero
figure('numbertitle','off','Name','Smit_Complex Wave greater than zero DT Signal')
a3=0.08;
b3=30;
c1=a3 + i*b3;
x8=-10:1:10;
k=exp(c1*x8);
stem(x8,real(k))
xlabel('n')
ylabel('x(n)')
title('Discrete Complex exponential with real part greater than zeroexponential with real part greater than zero')

% (b)Complex exponential with real part less than zero
figure('numbertitle','off','Name','Smit_Complex Wave less than zero DT Signal')
a4=-0.08;
c2=a4 + i*b3;
k1=exp(c2*x8);
stem(x8,real(k1))
xlabel('t')
ylabel('x(t)')
title('Continuous Complex exponential with real part less than zero')

%% Conclusion

%{
    Through this experiment, we saw how to generate the waveforms of
    certain basic waves in Continuous Time using MATLAB functions. We used
    the functions, individual pulse functions and other basic functions.
    This experiment gave us enough knowledge to understand the working of
    MATLAB for plotting of signals.
%}