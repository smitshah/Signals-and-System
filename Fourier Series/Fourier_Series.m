%% Fourier_Series


clc
clear all
close all

%% Q. Write a program in MATLAB to calculate the fourier series of a given periodic signal x(t) with fundamental period of 2 seconds and plot the output

syms t;
T=2;
N=50;
w0=2*pi/T;
f= heaviside(t)-heaviside(t-1);
a0_sym= 1/T * int(f,t,0,T); %a0 is symbolic because t is a symbolic variable
a0=double(a0_sym); % converting to numeric format
an=0; bn=0;
for n=1:N
    an_sym(n)= (2/T) * int(f*cos(n*w0*t),t,0,T);
    a(n)=double(an_sym(n));
    an=an+a(n);
    bn_sym(n)=(2/T) * int(f*sin(n*w0*t),t,0,T);
    b(n)=double(bn_sym(n));
    bn=bn+b(n);
end
fs=a0+an+bn
t = 0:0.01:5;
fn = a0;
for n = 1:N
    h = a(n)*cos(n*(2*pi/T)*t) + b(n)*sin(n*(2*pi/T)*t);
    fn = fn + h;
    plot(t,fn)
end

%% Conclusion

%{
    In this experiment we have calculated fourier series of a given
    periodic function for time period 2 seconds. In this firstly, we have
    generated the function and then we have ploted graph of time vs
    function.
%}
