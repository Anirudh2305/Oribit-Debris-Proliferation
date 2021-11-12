function df= VarDiff(t,var)
a=31.41;
b=7.794;
c=1.935;
d=0.1680;
f=14420;
g=-10430;
h=0.5712;
k=-0.9996;
p=184.9;
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

   df(1)=(a+b*sin(c*t+d))-(N/(f+g))-(x*n*N)-(2*y*N*N); 
   df(2)=beta*(a+b*sin(c*t+d))-(n/(p+q))+(alpha*x*n*N)+(gamma*y*N*N)-(2*z*n*n);
end


