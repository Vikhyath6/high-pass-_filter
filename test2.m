x1=input('Enter the first sequence');
n1=input('Enter the time period of first sequence');
x2=input('Enter the second sequence:');
n2=input('Enter the time period of the second sequence:');
n_start=min(n1(1),n2(1));
n_end=max(n1(end),n2(end));
n=n_start:n_end;
x1n=input('Enter the modified signal:');
x2n=input('Enter the modified signal:');
yn=x1n+x2n;
subplot(3,1,1)
stem(n,x1n)
title('x1[n]')
subplot(3,1,2)
stem(n,x2n)
title('x2[n]')
subplot(3,1,3)
stem(n,yn)
title('Sum signal')
