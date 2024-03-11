clc;
clear all;
close all;
b=input('enter');
n=length(b);
t=0:.01:n;
x=1:1:100*(n+1);
Vc = 5;
for i=1:n
    if(b(i)==0)
       b_p(i)= -1;
    else
        b_p(i)= 1;
    end
    for j=i:0.1:i+1
       bw(x(i*100:(i+1)*100))= b_p(i);
    end
end
bw=bw(100:end);
wo = 4*pi*t;
w = 2*pi*t;
sinLt = sin(wo-w);
sinHt = sin(wo+w);
st = sin(wo + (bw).*w);
subplot(4,1,1);
plot(t,bw);
subplot(4,1,2);
plot(t, sinLt);
subplot(4,1,3);
plot(t,st);
subplot(4,1,4);
plot(t, sinHt);
