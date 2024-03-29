clc;
clear all;
close all;
predictor = [0 1];
step = 0.2;
partition = [0]; codebook = [-1*step step];
t = 0:pi/20:2*pi;
x = 1.1*sin(0.2*pi*t);
encodex = dpcmenco(x, codebook, partition, predictor);
decodex = dpcmdeco(encodex, codebook, predictor);
%distor = (((x-decodex).^2)/length(x))
subplot(2,2,1);
plot(t,x);
%grid on;
subplot(2,2,2);
stairs(t, codebook(encodex+1), '--');
subplot(2,2,3);
plot(t,x);
hold;
stairs(t, decodex);