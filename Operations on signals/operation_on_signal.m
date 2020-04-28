%% operation_on_signal

clc
clear all
close all

%% Q1(1) Additon and multiplication of two different sine signals

t = -10:0.1:10;
y1 = sin(t);
figure('Name','Addition and Multiplication')
subplot(4,1,1)
plot(t,y1)
title('Signal 1')
t2 = t/2;
y2 = sin(t2);
subplot(4,1,2)
plot(t,y2)
title('Signal 2')
y3 = y1 + y2;
subplot(4,1,3)
plot(t,y3)
title('Addition')
y4 = y1.*y2;
subplot(4,1,4)
plot(t,y4)
title('Multiplication')

%% Q1(2) Time scaling, reversal and shifting of a sine wave

t3 = -10:0.1:10;
y5 = sin(t3);
figure('Name','Time scaling, reversal and shifting')
subplot(4,1,1)
plot(t3,y5)
title('Sample Signal')
y6 = sin(t3/2);
subplot(4,1,2)
plot(t3,y6)
title('Time scaling')
y7 = -y5;
subplot(4,1,3)
plot(t3,y7)
title('Reversal')
y8 = sin(t3-4);
subplot(4,1,4)
plot(t3,y8)
title('Shifting')

%% Q1(3) Add 2 different sequences

x1 = [0, 0, 1, 2, 3, 4, 5];
x2 = [3, 4, 5, 6, 7, 0, 0];
t4 = -3:3;
figure('Name','Addition of sequences')
subplot(3,1,1)
stem(t4,x1)
title('Sequence 1')
subplot(3,1,2)
stem(t4,x2)
title('Sequence 2')
t5 = -3:3;
x3 = x1+x2;
subplot(3,1,3)
stem(t5,x3)
title('Addition')
%% Q1(4) Perform 2nd task in discrete time

t6 = -10:0.7:10;
y9 = sin(t6);
figure('Name','Discrete time operation')
subplot(4,1,1)
stem(t6,y9)
title('Sample Signal')
y10 = sin(t6/2);
subplot(4,1,2)
stem(t6,y10)
title('Time scaling')
y11 = -y9;
subplot(4,1,3)
stem(t6,y11)
title('Reversal')
y12 = sin(t6-4);
subplot(4,1,4)
stem(t6,y12)
title('Shifting')

%% Q1(5) Even and Odd components
t7 = -5:5;
u = [0,0,0,0,0,1,1,1,1,1,1];
d = [1,1,1,1,1,1,0,0,0,0,0];
figure('Name','Even and Odd Sequence')
subplot(4,1,1)
stem(t7,u)
subplot(4,1,2)
stem(t7,d)
xe = (u+d)/2;
xo = (u-d)/2;
subplot(4,1,3)
stem(t7,xe)
subplot(4,1,4)
stem(t7,xo)

%% Q2(1) Plot x(t) = u(t)-u(t-4)

t8=-10:0.0001:10;
u1=1.*(t8>=0);
figure('Name','x(t)')
subplot(3,1,1)
plot(t8,u1)
axis([-15 15 -2 2])
title('u(t)')
u2=1.*(t8>=4);
subplot(3,1,2)
plot(t8,u2);
axis([-15 15 -2 2])
title('u(t-4)')
u3=u1-u2;
subplot(3,1,3)
plot(t8,u3);
axis([-15 15 -2 2])
title('x(t)')

%% Q2(2) Fold x(t)

figure('Name','x(-t)')
plot(-t8,u3)
axis([-15 15 -2 2])
title('x(-t)')

%% Q2(3) Differentiate x(t)

figure('Name',"x'(t)")
y13=diff(1.5.*u3);
plot(t8(:,1:length(y13)),y13);
axis([-15 15 -2 2])
title("x'(t)")

%% Q2(4) Integrate x(t)

figure('Name','int x(t)')
y14=cumsum(u3);
plot(t8,y14);
title('int x(t)')

%% Q2(5) Plot a sine wave y(t) and multiply it with x(t)

figure('Name','x2(t)')
f=0.250;
x4=2*sin(2*pi*f*t8);
subplot(2,1,1)
plot(t8,x4)
axis([-15 15 -2 2])
title('y(t)')
y15=u3.*x4;
subplot(2,1,2)
plot(t8,y15)
axis([-15 15 -2 2])
title('x2(t)')

%% Q2(6) Compress the signal x(t) by a factor of 2

figure('Name','x(t)/2')
y16=1.*(2*t8>=0)-1.*(2*t8>=4);
plot(t8,y16)
axis([-15 15 -2 2])
title('x(t)/2')

%% Q2(7) Expand the signal x(t) by a factor of 1.5

figure('Name','x(t)*1.5')
y17=1.*(1.5*t8>=0)-1.*(1.5*t8>=4);
plot(t8,y17)
axis([-15 15 -2 2])
title('x(t)*1.5')

%% Q2(8) Divide the signal y(t) by the compressed signal

figure('Name','x3(t)')
y18=x4./y16;
plot(t8,y18)
axis([-15 15 -2 2])
title('x3(t)')
