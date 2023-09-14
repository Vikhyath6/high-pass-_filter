x=linspace(-2*pi,2*pi,100);
y=exp(-0.5.*x).*sin(10.*x);
plot(x,y)
xlabel('t->')
ylabel('Amplitude')
title('Decaying sinusoidal signal')