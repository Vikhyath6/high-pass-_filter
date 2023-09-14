Fs=10000;
t=0:1/Fs:2;
x=sawtooth(2*pi*50*t);
plot(t,x)
axis([0 0.2 -1.1 1.1]);
xlabel('t->')
ylabel('Amplitude')
title('Sawtooth wave of 50Hz')