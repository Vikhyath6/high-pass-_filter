Fs=10000;
t=0:1/Fs:5;
x=square(2*pi*50*t,50);
plot(t,x)
axis([0 0.5 -1.1 1.1]);
xlabel('t->')
ylabel('Amplitude')
title('Square wave of 50Hz')