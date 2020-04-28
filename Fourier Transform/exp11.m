%% Experiment No: 11

%{
    Name: Smit Shah
    PRN: 17070123090
    Batch: EB-2
%}

clc
clear all
close all

%% Q. Write a program to find the fourier transform of following signals.

syms t w
x1 = exp(-2*t)*heaviside(t);
x2 = dirac(t);
x3 = sin(t);
x4 = cos(2*pi*t);
x5 = 1*(heaviside(t+4)-heaviside(t-4));
x6 = 2/(1+t*t);
x7 = exp(-1*abs(t));
x8 = dirac(t-2);
x9 = 1;
x10 = sign(t);
x11 = heaviside(t);
x12 = sinc(t);
f1 = fourier(x1,t,w)
f2 = fourier(x2,t,w)
f3 = fourier(x3,t,w)
f4 = fourier(x4,t,w)
f5 = simplify(fourier(x5,t,w))
f6 = fourier(x6,t,w)
f7 = fourier(x7,t,w)
f8 = fourier(x8,t,w)
f9 = fourier(x9,t,w)
f10= fourier(x10,t,w)
f11= fourier(x11,t,w)
f12= fourier(x12,t,w)

%% Conclusion

%{
    In this experiment we have calculated fourier transform of a given
    functions using built-in function.
%}