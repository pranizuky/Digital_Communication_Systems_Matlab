clear;
clc;
b = input('Enter the Bit stream \n '); %b = [0 1 0 1 1 1 0];
n = length(b);
t = 0:.01:n;
x = 1:1:(n+1)*100;
for i = 1:n
for j = i:.1:i+1
bw(x(i*100:(i+1)*100)) = b(i);
end
end
bw = bw(100:end);
sint = sin(2*pi*t);
st = bw.*sint;
subplot(3,1,1)
plot(t,bw)
%xlabel('Time');
%ylabel('digital data');
title('Digital Message ');
grid on ; axis([0 n -2 +2])
subplot(3,1,2)
plot(t,sint)
title('Carrier Signal');
grid on ; axis([0 n -2 +2])
subplot(3,1,3)
plot(t,st)
title('ASK signal ');
grid on ; axis([0 n -2 +2])