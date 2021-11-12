%-------------%
% Standard Model

A=100;
x= 3e-10;
beta=70;
alpha=1e4;
params1=[A;x;beta;alpha];

y01=[2000;5e4]; 


tspan1=[0:1:100];
[t1,y1]=ode45(@(t1,y1)stdDiff(t1,y1,params1),tspan1,y01);
subplot(1,2,1)
Plot(t1,y1)


tspan2=[0:1:500];
[t2,y2]=ode45(@(t2,y2)stdDiff(t2,y2,params1),tspan2,y01);
subplot(1,2,2)
Plot(t2,y2)
%-------------%
% Changing few parameters:

beta2=0;
alpha2=1e3;
params2=[A;x;beta2;alpha2];

yo2=[2000;2e4];
figure;

tspan3=[0:1:800];
[t2,y2]=ode45(@(t2,y2)stdDiff(t2,y2,params2),tspan3,yo2);
Plot(t2,y2)






