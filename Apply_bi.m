function nig_data=Apply_bi(A,B)
[a,b]=size(A);
for i=1:a*b
    f(i)=-A(i);
    if B(i)==0;
    else
        f(i)=A(i);
    end
end
zz=reshape(f,a,b);
nig_data=zz;