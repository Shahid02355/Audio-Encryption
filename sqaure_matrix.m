function matrixx=sqaure_matrix(A)
[x,y]=size(A);
Au=reshape(A,1,x*y);
x1=floor(sqrt(x*y));
for i=1:x1*x1
    f(i)=Au(i);
end
matrixx=reshape(f,x1,x1);