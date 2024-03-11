fs = 1000;
T = 1/fs;
t = 0:T:1-T;
N = length(t);
f1 = 10;
A1 = 1;
signal1 = A1*sin(2*pi*f1*t);
f2 = 20;
A2 = 0.5;
signal2 = A2*sin(2*pi*f2*t);

compositeSignal = signal1 + signal2;

subplot(3,1,1);
plot(t, signal1);
title('Signal 1');
subplot(3,1,2);
plot(t, signal2);
title('Signal 2');
subplot(3,1,3);
plot(t, compositeSignal);
title('Composite Signal');