function permutation1=Example_permute(A)
x3=length(A);
[x1,y1]=size(A);
z=max(x1,x3);
A1=generate_chao(500000,z+1);
S1=A1(:,1);
S1=S1(S1>0);
S1=S1(S1<x1+1);
S2=A1(:,2);
S2=S2(S2>0);
S2=S2(S2<x1+1);
permutation1=permut(A,S1,S2);