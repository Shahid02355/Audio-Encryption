function int=reverse_uint(D1,D2)
[x,y]=size(D1);
BB=de2bi(D1,8);
BC=de2bi(D2,7);
for i=1:x*y
    H{i}=[BB(i,:) BC(i,:)];
end
H1=cell2mat(H');
H2=bi2de(H1);
H3=reshape(H2,x,y);
int=int16(H3);
