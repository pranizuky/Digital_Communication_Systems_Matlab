clc;
clear all;
close all;
x = input('Enter bits required');
t = sum(x);
if (mod(t,2)==0)
    y = [x 0]; disp("Parity bit is 0");
else
    y = [x 1]; disp("Parity bit is 1");
end
disp(x);
disp(y);