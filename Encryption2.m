 function cipherd_data=Encryption2(A,Au,n)
[x,y]=size(A);
 z=length(A);
Sbox1=LFT4128(12,34,56,78);
J1=substitute1(A,Sbox1);
Nu=mod(reshape(bitxor(Au(:,1),Au(:,3)),x,y),n);
A3=bitxor(Nu,J1);
cipherd_data=A3;
