clc
clearvars
Z = [10-7.5*j -6+5*j; 
 -6+5*j 16+3*j]; 
b = -2*exp(j*pi*75/180);
V = [5 
 b];  
I = inv(Z)*V;
i1 = I(1); 
i2 = I(2); 
Vc = -10*j*(i1 - i2); 
i1_abs = abs(I(1)); 
i1_ang = angle(I(1))*180/pi; 
Vc_abs = abs(Vc); 
Vc_ang = angle(Vc)*180/pi;