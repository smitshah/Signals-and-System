%% CT_signal

clc
clear all
close all

%% 1. Sine Wave

t=0:0.15:10;
f=0.50;
x1=2*sin(2*pi*f*t);
figure('numbertitle','off','Name','Smit_Sine Wave CT Signal')
plot(t,x1)
xlabel('t')
ylabel('x(t)')
title('Continuous sine wave')

%% 2. Unit Impulse Wave

t1=-1:0.1:1;
impulse= t1==0;
figure('numbertitle','off','Name','Smit_Unit Impulse Wave CT Signal')
plot(t1, impulse)
xlabel('t1')
ylabel('x(t1)')
title('Continuous unit impulse wave')

%% 3. Unit Step Wave

N=10;
n2=0:1:N-1;
x3=ones(1,N);
figure('numbertitle','off','Name','Smit_Unit Step Wave CT Signal')
plot(n2,x3)
xlabel('t')
ylabel('x(t)')
title('Continuous unit step wave')

%% 4. Unit Ramp Wave

n3=0:1:9;
x4=1*n3;
figure('numbertitle','off','Name','Smit_Unit Ramp Wave CT Signal')
plot(n3,x4)
xlabel('t')
ylabel('x(t)')
title('Continuous unit ramp wave')

%% 5. Unit Rectangular Pulse

figure('numbertitle','off','Name','Smit_Unit Rectangular Wave CT Signal')
a=1;
b=1;
x5=-6:0.0025:6;
f2= @(xi,a,b) a*rectpuls(xi,b);
plot(x5,f2(x5,a,b),'b-')
xlabel('t')
ylabel('x(t)')
title('Continuous Unit Rectangular wave')

%% 6. Traingular Pulse

f3=10;
t2=-2:1/f3:2;
x6=tripuls(t2,2);
figure('numbertitle','off','Name','Smit_Triangular Wave CT Signal')
plot(t2,x6)
xlabel('t')
ylabel('x(t)')
title('Continuous triangular wave')

%% 7. Signum

x9=[-5 -eps(1) 0 eps(1) 5];
y=sign(x9);
figure('numbertitle','off','Name','Smit_Signum Wave CT Signal')
plot(x9,y)
ylim([-2 2])
grid on
xlabel('t')
ylabel('x(t)')
title('Continuous Signum wave')

%% 8. Sinc

fs=1000;
%t=-5:1/fs:5;
x10=linspace(-8,8,100);
y=sinc(x10);
figure('numbertitle','off','Name','Smit_Sinc Wave CT Signal')
plot(x10,y);
axis([-10 10 -1.5 1.5]);
xlabel('t');
ylabel('x(t)');
title('Continuous Sinc wave');
%% 9. Real Exponential

% (a)Increasing
t3=0:0.01:1;
a1=5;
x7=exp(a1*t3);
figure('numbertitle','off','Name','Smit_Exponential Increasing Wave CT Signal')
plot(t3,x7)
xlabel('t')
ylabel('x(t)')
title('Continuous Exponential Increasing wave')


% (b)Decreasing
t4=0:0.1:5;
a2=1;
x8=exp((-a2)*t4);
figure('numbertitle','off','Name','Smit_Exponential Decreasing Wave CT Signal')
plot(t4,x8)
xlabel('t')
ylabel('x(t)')
title('Continuous Exponential Decreasing wave')

%% 10. Complex Exponential

% (a)Complex exponential with real part greater than zero
figure('numbertitle','off','Name','Smit_Complex Wave greater than zero CT Signal')
a3=0.08;
b3=30;
c=a3 + i*b3;
t5=-10:0.2:10;
x11=exp(c*t5);
plot(t5,real(x11))
xlabel('t')
ylabel('x(t)')
title('Continuous Complex exponential with real part greater than zero')

% (b)Complex exponential with real part less than zero
figure('numbertitle','off','Name','Smit_Complex Wave less than zero CT Signal')
a4=-0.08;
c1=a4 + i*b3;
x12=exp(c1*t5);
plot(t5,real(x12))
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
