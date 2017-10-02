% EE368 exp 13 exercise 1 & 2
% Colleen Lau

%%Exercise 1
t_1=0:1/20:1;
y_1=sin(2*pi*t_1);
figure(1)
%Sin Wave "normal"
subplot(2,1,1)
plot(t_1,y_1)
axis([0 1 -1 1]);
xlabel('time in seconds'); ylabel('volts')
%Sin Wave "stairway like"
subplot(2,1,2)
stem(t_1,y_1)
axis([0 1 -1 1]);
xlabel('time in seconds'); ylabel('volts')

t=0:1/40:1;
y=cosd(2*pi*100*t);
y_1 = cosd((2*pi*100*t)-36);

%%Exercise 2 Plotting figure
%phase lag
figure(8)
subplot (2,1,1)
plot (t,y,t,y_1)
axis([0 1 -1 1])
xlabel('time in seconds'); ylabel('volts')

%stem plot
subplot(2,1,2)
stem(t,y)
axis([0 1 -1 1])
xlabel('time in seconds'); ylabel('volts')

%stairs plot
figure(9)
stairs(t,y)
axis([0 1 -1 1])
xlabel('time in seconds'); ylabel('volts')
print -dps exp13_2.ps