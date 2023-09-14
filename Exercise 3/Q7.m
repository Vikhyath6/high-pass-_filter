t=linspace(0,100,100);
x=sin(2*pi*1000*t);
y=cos(2*pi*1000*t);
subplot(2,1,1)
plot(t,x)
xlabel('t->')
ylabel('sin(x)')
title('sine wave')
subplot(2,1,2)
plot(t,y)
axis([0 100 -1.2 1.2]);
xlabel('t->')
ylabel('cos(x)')
title('cosine wave')