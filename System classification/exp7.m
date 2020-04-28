%% Experiment No: 7

%{
    Name: Smit Shah
    PRN: 17070123090
    Batch: EB-2
%}

clc
clear all
close all

%% QUESTION 1: Make a model in Simulink to identify whether the system y(t)= x(t)cos(wt) is time variant/time invariant

figure(1)
a=imread('exp_07_a_blockdiagram.PNG');
imshow(a)
figure(2)
b=imread('exp_07_a_system.PNG');
imshow(b)
figure(3)
c=imread('exp_07_a_delay.PNG');
imshow(c)
figure(4)
d=imread('exp_07_a_output.PNG');
imshow(d)

%% QUESTION 2: Make a model in Simulink to identify whether the system y(t)= 2x(t)+1 is linear/non-linear

figure(5)
a=imread('exp_07_b_subsystem.PNG');
imshow(a)
figure(6)
b=imread('exp_07_b_homogenity.PNG');
imshow(b)
figure(7)
c=imread('exp_07_b_homogenity_op.PNG');
imshow(c)
figure(8)
d=imread('exp_07_b_linearity.PNG');
imshow(d)
figure(9)
e=imread('exp_07_b_linearity_op.PNG');
imshow(e)

%% Conclusion

%{
    In this experiment, for time variant/invariant we used subsystem command. In subsystem we have one i/p, one o/p, sine wave and that is multiplying the i/p to produce o/p. We have also added dealy to the o/p. By this we can say thta this system is time varying system.
 
    And for linear/non-linear we have created system in simulink with same
    two subsystem. We have checked for the homogenity, as the signal are
    not same. We found out that the system is not homogenous. As the two system are not same the system does not satisfy linearity. So, the system is non-linear. 
%}