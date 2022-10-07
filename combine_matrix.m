function combine_matrix=combine_matrix(A,B,x,y)
[x1,y1]=size(A);
A1=reshape(A,1,x1*y1);
C=[A1';B'];
combine_matrix=reshape(C,x,y);
