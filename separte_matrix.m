function matrix=separte_matrix(A)
[x,y]=size(A);
Au=reshape(A,1,x*y);
x1=floor(sqrt(x*y));
y1=x*y-x1*x1;
z1=x1*x1;
for j=1:y1
    g(j)=Au(z1+j);
end
matrix=g;