clear;
clc;
b = input('Enter the Bit stream \n '); %b = [0 1 0 1 1 1 0];
n = length(b);
t = 0:.01:n;
x = 1:1:(n+1)*100
for i=1:n
    if b(i)==0
        b_p(i)=-1;
    else
        b_p(i)=1;
    end
    for j=i:.1:i+1
        bw(x(i*100:(i+1)*100))=b_p(i);
    end
end
bw = bw(100:end);
wo = 4*pi*t;
w = 2*pi*t;
sinHt = sin(wo+w);
sinLt = sin(wo-w);
st = sin(wo + (bw).*w);
subplot(4,1,1)
plot(t,bw)
title('Digital message')
grid on ; axis([0 n -2 +2])
subplot(4,1,2)
plot(t,sinHt)
title('Carrier frequency for logic 1')
grid on ; axis([0 n -2 +2])
subplot(4,1,3)
plot(t,sinLt)
title('Carrier frequency for logic 0')
grid on ; axis([0 n -2 +2])
subplot(4,1,4)
plot(t,st)
grid on ; axis([0 n -2 +2])
title('fsk waveform')
