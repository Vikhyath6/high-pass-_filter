fs=8000;  

n=50;  

w=1200/ (fs/2);

b=fir1(n,w,'high');  

freqz(b,1,128,8000); % this function plots the phase(degree)and magnitude in db  

subplot(2,1,2)

figure(2)  

[h,w]=freqz(b,1,128,8000);  

plot(w,abs(h)); % Normalized Magnitude Plot  

title('Magnitude Plot ');

grid  

figure(3)  

zplane(b,1); 