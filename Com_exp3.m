t=0:0.0001:1;
a=5;
fm=input("Enter the message frequency:");
fc=input("Enter the carrier frequency:");
fs=input("Enter the sampling frequency(fs>=2*fc):");
m=5;
sm=a*sin(2*pi*fm*t);
subplot(4,1,1)
plot(t,sm)
xlabel('time')
ylabel("Amplitude")
title("Message signal")
grid on
sc=a*sin(2*pi*fc*t);
subplot(4,1,2)
plot(t,sc)
xlabel('time')
ylabel("Amplitude")
title("Carrier signal")
grid on
sfm=a*sin((2*pi*fc*t)+(m.*sin(2*pi*fm*t)));
subplot(4,1,3)
plot(t,sfm)
xlabel('time')
ylabel('Amplitude')
title('Frequency modulated signal')
fdev=fc+10;
fdem=fmdemod(sfm,fc,fs,fdev);
subplot(4,1,4)
plot(t,fdem)
xlabel('time')
ylabel('Amplitude')
title('Demodulated signal')