clc
clearvars
l=5; 
c=1.25e-6; 
r1=10000; 
r2=100; 
num1=[r1/l 0]; 
den1=[1 r1/l 1/(l*c)]; 
w=logspace(1,4); 
h1=freqs(num1,den1,w);
f=w/(2*pi); 
mag1=abs(h1); 
phase1=angle(h1)*180/pi; 
num2=[r2/l 0]; 
den2=[1 r2/l 1/(l*c)]; 
h2=freqs(num2,den2,w); 
mag2=abs(h2); 
phase2=angle(h2)*180/pi; 
subplot(221), loglog(f, mag1,'.') 
title('magnitude response R=10K') 
ylabel('magnitude') 
subplot(222), loglog(f,mag2,'.') 
title('magnitude response R=.1K') 
ylabel('magnitude') 
subplot(223), semilogx(f, phase1,'.') 
title('phase response R=10K'),... 
xlabel('Frequency, Hz'), ylabel('angle in degrees') 
subplot(224), semilogx(f, phase2,'.') 
title('phase response R=.1K'),... 
xlabel('Frequency, Hz'), ylabel('angle in degrees')