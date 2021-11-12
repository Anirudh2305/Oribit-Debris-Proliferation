%-----------------
% variation in standard model
yo=[4650;110400];
tspan1=[0:1:500];
[t1,y1]=ode45(@(t1,y1)VarDiff(t1,y1),tspan1,yo);
Plot(t1,y1);

% Jacobian analysis
a=31.41;
x=6.895e-10;
p=130;
alpha=10000;
beta=70;

[t1,y1]=ode45(@(t1,y1)Jacobian(t1,y1),tspan1,yo);
figure;
Plot(t1,y1);
matrix=[-x*a*p*(alpha+beta) -1/(p*(alpha+beta));alpha*x*a*p*(alpha+beta) alpha/(p*(alpha+beta))-1/p]
eigenvalues=eig(matrix)

