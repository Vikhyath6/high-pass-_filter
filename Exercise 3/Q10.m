n=-1:0.1:1;
y=[zeros(1,10),0:1:10];
subplot(3,1,1)
stem(n,y)
xlabel('n->')
ylabel('r[n]')
title('Ramp signal')
y2=[zeros(1,10),ones(1,11)];
subplot(3,1,2)
stem(n,y2)
xlabel('n->')
ylabel('u[n]')
title('Step signal')
y3=[zeros(1,10),ones(1,1),zeros(1,10)];
subplot(3,1,3)
stem(n,y3)
xlabel('n->')
ylabel('S[n]')
title('Impulse signal')