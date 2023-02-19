clc;
c=input('cost');
a=input('coeff');
b=input('rhs');
%c=[2 5 3]
%a=[2 -7 4;3 4 -5;7 -8 9]
%b=[5;8;10]
%ineq=[0 1 0];
ineq=input('ineq');
[m,n]=size(a);
s=eye(m);
idx=find(ineq==1);
s(idx,:)=-s(idx,:);
x=zeros(1,m);
C=[c x];
objfn=array2table(C);
objfn.Properties.VariableNames(1:size(C,2))={'x1','x2','x3','s1','s2','s3'};
A=[a s b];
Mat=array2table(A);
Mat.Properties.VariableNames(1:n+m+1)={'x1','x2','x3','s1','s2','s3','b'};
disp(objfn);
disp(Mat);