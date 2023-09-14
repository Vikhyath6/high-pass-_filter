x1=input('Enter the first sequence:');
x2=input('Enter the second sequence:'); 
N=max(length(x1),length(x2));
if length(x1)<N
    x1(length(x1)+1:N)=0;
end
if length(x2)<N
    x2(length(x2)+1:N)=0;
end
y1=cconv(x1,x2,N);
y2=cconv(x2,x1,N);
n=0:N-1;
disp(y1)
disp(y2)
subplot(2,1,1)
stem(n,y1)
xlabel('n->')
ylabel('Magnitude')
title('LHS=x1 conv x2')
subplot(2,1,2)
stem(n,y2)
xlabel('n->')
ylabel('Magnitude')
title('RHS=x2 conv x1')