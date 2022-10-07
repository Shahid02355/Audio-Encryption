function matrix_permut=permut(A,B,C)
[x1,y1]=size(A);
for i=1:x1
    for j=1:y1
        D(i,j)=A(B(i),C(j));
    end
end
matrix_permut=D;