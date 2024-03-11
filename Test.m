
clc;
clear all;
close all;

fs = 1000;
fc = 100; 
fm = 10; 
amplitude = 1; 

t = 0:1/fs:1;

message_signal = amplitude * sin(2*pi*fm*t);

carrier_signal = sin(2*pi*fc*t);

modulated_signal = (1 + message_signal) .* carrier_signal;

figure;
subplot(3,1,1);
plot(t, message_signal);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3,1,2);
plot(t, carrier_signal);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3,1,3);
plot(t, modulated_signal);
title('Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
% Amplitude Demodulation (AM)
% Demodulated signal
demodulated_signal = abs(hilbert(modulated_signal)); % Envelope detection
% Plotting
figure;
subplot(2,1,1);
plot(t, modulated_signal);
title('Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(2,1,2);
plot(t, demodulated_signal);
title('Demodulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');

