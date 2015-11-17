// Check for the Q to be a symmetric matrix

f=[2 -35 -47]'; 
H =[5   -2   -1; -2   4   3; -1   3   5];
[xopt,fopt,exitflag,output,lambda]=qpipoptmat(H,f)

//Output
// lambda  =
// 
//   lower: [0,0,0]
//   upper: [0,0,0]
//   constraint: [0x0 constant]
// output  =
// 
//   Iterations: 1
// exitflag  =
// 
//  0  
// fopt  =
// 
//  - 249.  
// xopt  =
// 
//    3.  
//    5.  
//    7.  
