%% Experiment No: 5

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2
%}

clc
clear all
close all

%% 1. Deterministic/Random

figure('Name', 'Deterministic/Random CT and DT Signal')
f=5;
Fs=100;
Ts=1/Fs;
t=0:Ts:1.0;
n=-10:1:10;
subplot(2,2,1)
y=sawtooth(2*pi*f*t);
plot(t,y)
axis([0 1 -1.2 1.2])
title('Deterministic Continuous Time Signal ')
xlabel('Time')
ylabel('Amplitude')
subplot(2,2,2)
y1=sawtooth(2*pi*f*n);
stem(n,y1)
axis([0 10 -1.2 1.2])
title('Deterministic Discrete Time Signal ')
xlabel('Time')
ylabel('Amplitude')

t1 = 0:10;
smax =  1.5;
smin = -0.8;
s = (smax-smin)*rand(1,length(t1));
subplot(2,2,3)
plot(t1, s)
title('Continuos Time Random Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(2,2,4)
stem(t1, s)
title('Discrete Time Random Signal')
xlabel('Time')
ylabel('Amplitude')

%% 2. Periodic/Aperiodic

figure('Name', 'Periodic/Aperiodic CT and DT Signal')
subplot(2,2,1)
plot(t,y)
xlabel('Time')
ylabel('Amplitude')
title('Continuos Time Periodic Signal')
subplot(2,2,2)
stem(n,y1)
xlabel('Time')
ylabel('Amplitude')
title('Discrete Time Periodic Signal')

t2=0:0.10:1;
a1=5;
x1=exp(a1*t2);
subplot(2,2,3)
plot(t2,x1)
xlabel('Time')
ylabel('Amplitude')
title('Continuos Time Aperiodic Signal')
subplot(2,2,4)
stem(t2,x1)
xlabel('Time')
ylabel('Amplitude')
title('Discrete Time Aperiodic Signal')

%% 3. Energy/Power. Calculate its value.

figure('Name', 'Energy/Power CT and DT Signal')
N=10;
n3=0:1:N-1;
x2=ones(1,N);
subplot(2,2,1)
plot(n3,x2)
xlabel('Time')
ylabel('Amplitude')
title('Continuous Time Power Signal')
subplot(2,2,2)
stem(n3,x2)
xlabel('Time')
ylabel('Amplitude')
title('Discrete Time Power Signal')

t4=linspace(0,3*pi);
x3=square(t4);
n4=-5:1:5;
x4=square(n4);
subplot(2,2,3)
plot(t4,x3)
axis([0 5 -1.5 1.5])
xlabel('Time')
ylabel('Amplitude')
title('Continuous Time Energy Signal')
subplot(2,2,4)
stem(n4,x4)
axis([0 5 -1.5 1.5])
xlabel('Time')
ylabel('Amplitude')
title('Discrete Time Energy Signal')
%% 4. Even/Odd

figure('Name', 'Even/Odd CT and DT Signal')
t5=-10:1:10;
x5=t5.^2;
x6=t5.^3;
subplot(2,2,1)
plot(t5,x5)
xlabel('Time')
ylabel('Amplitude')
title('Continuous Time Even Signal')
subplot(2,2,2)
stem(t5,x5)
xlabel('Time')
ylabel('Amplitude')
title('Discrete Time Even Signal')

subplot(2,2,3)
plot(t5,x6)
xlabel('Time')
ylabel('Amplitude')
title('Continuous Time Odd Signal')
subplot(2,2,4)
stem(t5,x6)
xlabel('Time')
ylabel('Amplitude')
title('Discrete Time Odd Signal')

%% Conclusion

%{
    Through this experiment, we saw how to differentiate between a
    deterministic and random signal, Periodic and Aperiodic signal, energy
    and power signal, odd and even signal. We also plotted each of these in
    continuous time and discrete time to observe the difference.
%}