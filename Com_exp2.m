t=0:0.000001:0.001;
Vm=1;
Vc=1;
fm=2000;
fc=50000;
m_t=Vm*sin(2*pi*fm*t);
subplot(3,1,1)
plot(t,m_t)
xlabel('time')
ylabel('Amplitude')
title('Message signal')
c_t=Vc*sin(2*pi*fc*t);
subplot(3,1,2)
plot(t,c_t)
xlabel('time')
ylabel('Amplitude')
title('Carrier signal')
s_t=m_t.*c_t;
hold on
plot(t,m_t,'r:')
plot(t,-m_t,'r:')
xlabel('time')
ylabel('Amplitude')
title('Modulated signal')
hold off
r=s_t.*c_t;
[b a]=butter(1,0.01);
mr=filter(b,a,r);
subplot(3,1,3)
plot(t,mr)
xlabel('time')
ylabel('Amplitude')
title('Demodulated signal')