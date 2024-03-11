clc;
close all;
clear all;
x = input('Enter the bit sequence to test for Even parity: ');
t = 0;
for i = 1:length(x) %can replace this 'for' loop just by
if(x(i))
 t = t + 1; %increment by one if a bit is one
 end
end
if(mod(t,2)~=0) %check if not even then attach another '1' to
 y = [x 1]; disp('Parity bit generated : 1');
else %check if even then attach another '0' to let the parity be
 y = [x 0]; disp('Parity bit generated : 0');
end
disp('Input bit sequence:');
disp(x); %display the input bit sequence
disp('Bit sequence with parity (Even) bit : ');
disp(y); %display the resultant bit sequence after parity bit