n=0:4;
u=[1 1 1 1 1];
h=[1 -1 1 -1 1];
nn=0:8;
y=conv(u,h);
stem(nn,y)
title('Step response')
xlabel('n->')