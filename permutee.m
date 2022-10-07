function permutation=permutee(A)
[x,y]=size(A);
A_sqr=sqaure_matrix(A);
A_sprt=separte_matrix(A);
x3=length(A_sprt);
[x1,y1]=size(A_sqr);
z=max(x1,x3);
A1=generate_chao(500000,z+1);
S1=A1(:,1);
S1=S1(S1>0);
S1=S1(S1<x1+1);
S2=A1(:,2);
S2=S2(S2>0);
S2=S2(S2<x1+1);
permutation1=permut(A_sqr,S1,S2);
S3=A1(:,3);
S3=S3(S3>0);
S3=S3(S3<x3+1);
permutation2=permut1(A_sprt,S3);
permutation=combine_matrix(permutation1,permutation2,x,y);




