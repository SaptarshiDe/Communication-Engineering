clc;
clear all;
t=0:0.001:1;
am=input('Enter the value of am');
fm=input('Enter the value of fm');
mf=input('enter the value of mf');
mp=input('enter the value of mp');
ac=input('enter the value of ac');
fc=input('enter the value of fc');
x=am*cos(2*pi*fm*t);
subplot(4,1,1)
plot(t,x,'r')
title('Message signal')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
c=ac*cos(2*pi*fc*t);
subplot(4,1,2)
plot(t,c,'b')
title('Carrier signal')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
ffm=ac*cos((2*pi*t*fc)+mf*sin(2*pi*fm*t));
subplot(4,1,3)
plot(t,ffm,'g')
title('Frequency Modulated Signal')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on
pfm=ac*cos((2*pi*t*fc)+mp*cos(2*pi*fm*t));
subplot(4,1,4)
plot(t,pfm,'m')
title('Phase Modulated Signal')
xlabel('TIME')
ylabel('AMPLITUDE')
grid on


