clc;
clear all;
close all;
b = input("\n");
n = length(b);
t = 0:0.01:n;
x = 1:1:(n+1)*100;
for i = 1:n
    for j = 1:n
        bw(x(i*100:(i+1)*100)) = b(i);
    end
end
bw = bw(100:end);
st = sin(2*pi*t);
ask = bw.*st;
subplot(3,1,1);
plot(t,bw);
subplot(3,1,2);
plot(t,st);
subplot(3,1,3);
plot(t,ask);