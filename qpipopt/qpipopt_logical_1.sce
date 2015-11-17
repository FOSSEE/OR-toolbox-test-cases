//Find x in R^6 such that:
// A simple example with constraints
conMatrix= [1,-1,1,0,3,1;
-1,0,-3,-4,5,6;
2,5,3,0,1,0
0,1,0,1,2,-1;
-1,0,2,1,1,0];
conLB=[1;2;3;-%inf;-%inf];
conUB = [1;2;3;-1;2.5];
lb=[-1000;-10000; 0; -1000; -1000; -1000];
ub=[10000; 100; 1.5; 100; 100; 1000];
//and minimize 0.5*x'*Q*x + p'*x with
p=[1; 2; 3; 4; 5; 6]; Q=eye(6,6);
nbVar = 6;
nbCon = 5;
x0 = repmat(0,nbVar,1);
param = list("MaxIter", 300, "CpuTime", 100);
[xopt,fopt,exitflag,output,lambda]=qpipopt(nbVar,nbCon,Q,p,lb,ub,conMatrix,conLB,conUB,x0,param)

//Output	
//lambda  =
// 
//   lower: [1.512D-11,7.496D-12]
//   upper: [0,0]
//   constraint: [3.1111111,0.4444444,2.999D-11]
// output  =
// 
//   Iterations: 7
// exitflag  =
// 
//  0  
// fopt  =
// 
//  - 8.2222223  
// xopt  =
// 
//    0.6666667  
//    1.3333333 

