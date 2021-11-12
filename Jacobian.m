function df= Jacobian(t,var,params)
a=31.41;
b=7.794;
c=1.935;
d=0.1680;
f=14420;
g=-10430;
h=0.5712;
k=-0.9996;
p=130;
q=-137.9;
x=6.895e-10;
y=1.369e-9;
z=2.869e-14;
alpha=10000;
beta=70;
gamma=56000;
  
  N=var(1);
  n=var(2);
  
  df=zeros(2,1);
 
   % approx for phase portraits
   df(1)=a-x*n*N;
   df(2)=beta*a-n/p+alpha*x*n*N;
end




