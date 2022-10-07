function Binary_matrix=ExampleBi_matrix(A)
[a,b]=size(A);
for i=1:a*b
    f(i)=0;
    if A(i)<=0
    else
        f(i)=1;
    end
end
CC=reshape(f,a,b);

Binary_matrix=CC;

        