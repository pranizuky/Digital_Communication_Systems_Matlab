predictor=[0 1];
partition=[0];
step=0.2;
codebook=[-1*step step];
t=0:pi/20:2*pi;
x=1.1*sin(0.2*pi*t);
encodex= dpcmenco(x, codebook,partition, predictor);
decodex= dpcmdeco(encodex,codebook, predictor);
figure;
subplot(3,1,1);
plot(t,x);
subplot(3,1,2);
stairs(t, codebook(encodex+1)*10,'--');
subplot(3,1,3);
plot(t,x);
hold;
stairs(t, decodex);


