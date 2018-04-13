close all;
clear all;
clf;
fc=input('Enter the value of fc1');
fc1=input('Enter the value of fc2');
r=input('Enter no of bits');
n=rand(1,r);
for i=1:length(n)
    if n(i)>0.5
        n(i)=0;
    else
        n(i)=1;
    end
end
n=[0 0 1 0 0]
l=length(n);
if n(l)==1
    n(l+1)=1;
else
    n(l+1)=0;
end
l1=length(n);
tn=0:l1-1;
subplot(5,1,1)
stairs(tn,n);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;
t=0:0.01:l;
c1=sin(2*pi*fc*t);
subplot(5,1,2)
plot(t,c1,'r');
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal (Higher Frequency)');
grid on;
t=0:0.01:l;
c2=sin(2*pi*fc1*t);
subplot(5,1,3)
plot(t,c2,'r');
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal (Low frequency)');
grid on;
for i=1:l
    for(j=(i-1)*100:i*100)
        if(n(i)==1)
            s(j+1)=c1(j+1);
        else
            s(j+1)=c2(j+1);
       end
    end
end
subplot(5,1,4);
plot(t,s,'g');
xlabel('Time');
ylabel('Amplitude');
title('FSK Modulated signal');
grid on;
for i=1:l
    for j=(i-1)*100:i*100
        if(s(j+1)==c1(j+1))
            x(j+1)=1;
        else
            x(j+1)=0;
        end
    end
end
subplot(5,1,5)
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('FSK Demodulated signal');
grid on;