clf
clc
clear all
t=0:0.001:1;
am=input('Enter the value of am')
fm=input('Enter the value of fm')
ac=input('Enter the value of ac')
fc=input('Enter the value of fc')
m=am*cos(2*pi*fm*t);
subplot(3,1,1)
plot(t,m,'r')
title('Message Signal')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
c=ac*cos(2*pi*fc*t);
subplot(3,1,2)
plot(t,c,'r')
title('Carrier Signal')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
s=(ac+m).*cos(2*pi*fc*t);
subplot(3,1,3)
plot(t,s,'b')
title('Modulated Signal')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
