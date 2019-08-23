
%Program to integrate the first order ODE  x`(t)=-2x(t)+t

%x(0)=1 as the initial condition

clear;

%ax`=bx+ct

a=1.;
b=-2.;
c=1.;

%initial and finall times 
tin=0.;
tmax=5.;

%number of time steps for descretisation
maxt = 3000;
dt= (tmax-tin)/maxt ;

%initial condition
x(1)= 1.;
t(1)=tin;

%time loop

for j=1:maxt;
    x(j+1)=x(j)+ dt * ((b*x(j)+c*(j)*dt)/a);
    t(j+1)=tin+j*dt;
end;

%figure
plot(t,x);
title('Euler first order');
xlabel('T');
ylabel('x(t)');


