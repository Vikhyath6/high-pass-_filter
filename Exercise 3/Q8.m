x=linspace(-2*pi,2*pi,100);
y=exp(-0.5.*x);
subplot(2,1,1)
plot(x,y)
xlabel('t->')
ylabel('Amplitude')
title('Decaying signal')
z=exp(0.5.*x);
subplot(2,1,2)
plot(x,z)
xlabel('t->')
ylabel('Amplitude')
title('Growing signal')


