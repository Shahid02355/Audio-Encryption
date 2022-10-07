function inver_Sbox=In_box(xx)
Box=xx';
A=zeros(16,16);
for j=1:256;
for i=1:256;
    if Box(i)==j-1;
        A(:,j)=i;
    end
end
end
sbox=A(1,:)-1;
invox=reshape(mod(sbox,256),16,16);
inver_Sbox=invox';