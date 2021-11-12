function df= stdDiff(t,var,params)
 A=params(1);
 x=params(2);
 beta=params(3);
 alpha=params(4);
  
  N=var(1);
  n=var(2);
  
  df=zeros(2,1);
  df(1)= A-x*n*N;
  df(2)= beta*A+alpha*x*n*N;
end
