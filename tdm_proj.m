clc;
close all;
clear all;
% Signal generation
x=0:.5:4*pi;                             % siganal taken upto 4pi
sig1=8*sin(x);                           % generate 1st sinusoidal signal
l=length(sig1);
sig2=8*triang(l);
sig3=8*square(l);
% Generate 2nd traingular Sigal
% Display of Both Signal
subplot(2,3,1);                          
plot(sig1);
title('Sinusoidal Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(2,3,2);
plot(sig2);
title('Triangular Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(2,3,3);
plot(sig3);
title('Square Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
% Display of Both Sampled Signal
subplot(2,3,4);
stem(sig1);
title('Sampled Sinusoidal Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(2,3,5);
stem(sig2);
title('Sampled Triangular Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(2,3,6);
stem(sig3);
title('Sampled Square Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
l1=length(sig1);
l2=length(sig2);
l3=length(sig3);
 for i=1:l3
  sig(1,i)=sig1(i);                        % Making Both row vector to a matrix
  sig(2,i)=sig2(i);
  sig(3,i)=sig3(i);
 end  
% TDM of both quantize signal
tdmsig=reshape(sig,1,2,3*l3);               
% Display of TDM Signal
figure
stem(tdmsig);
title('TDM Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
% Demultiplexing of TDM Signal
 demux=reshape(tdmsig,2,l1);
 for i=1:l1
  sig3(i)=demux(1,i);                    % Converting The matrix into row vectors
  sig4(i)=demux(2,i);
  sig5(i)=demux(3,i);
 end  
 
 % display of demultiplexed signal
 figure
 subplot(3,1,1)
 plot(sig3);
 title('Recovered Sinusoidal Signal');
 ylabel('Amplitude--->');
 xlabel('Time--->');
 subplot(3,1,2)
 plot(sig4);
 title('Recovered Triangular Signal');
 ylabel('Amplitude--->');
 xlabel('Time--->');
 subplot(3,1,3)
 plot(sig5);
 title('Recovered Square Signal');
 ylabel('Amplitude--->');
 xlabel('Time--->');