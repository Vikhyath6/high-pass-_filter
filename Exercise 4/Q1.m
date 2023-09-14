n1=-1:1:2;
n2=-2:1:3;
n=-4:1:4;
x1=[zeros(1,3),3.^n1.*ones(1,4),zeros(1,2)];
x2=[zeros(1,2),2.^n2.*ones(1,6),zeros(1,1)];
y1=x1+x2;
stem(n,y1)
