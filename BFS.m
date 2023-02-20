clc;
close all;
a=[-1 1 1 0 ; 1 1 0 1];
b=[1;2];
c=[1 2 0 0];


m=size(a,1); 
n=size(a,2);
nv=nchoosek(n,m);
t=nchoosek(1:n,m);
disp(t);
sol=[];
for i=1:nv
    t(i,:)
    y=zeros(n,1);
    x=a(:,t(i,:))\b;
    if all(x>=0&x~=inf&x~=-inf)
        y(t(i,:))=x;
        sol=[sol y];

    end
end
sol
z=c*sol;
[zmax,zind]=max(z);
bfs=sol(:,zind);
bfs