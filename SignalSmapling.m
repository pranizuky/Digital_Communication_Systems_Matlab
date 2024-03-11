clc
clear all
close all
N=50;
n=0:N-1; % discrete time vector
fs = 1000;
T=1/fs; % sampling period
f=60;
x = cos(2*pi*f*n*T); % signal frequency
% sampled signal
figure
subplot(4,1,1);
plot(x);
title('Original Signal');
y= resample(x,2,1);% to change the sample value
subplot(4,1,2);
stem(y);
title('fs=2fm');
y= resample(x,4,1);% to change the sample value
subplot(4,1,3);
stem(y);
title('fs>2fm');
y= resample(x,1,2);% to change the sample value
subplot(4,1,4);
stem(y);
title('fs<2fm');
