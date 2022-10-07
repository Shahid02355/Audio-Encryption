 function cipherd_data=Encryption1(A,Au)
[x,y]=size(A);
 z=length(A);
 Sbox1=LFT1(12,34,56,78);
 A2=substitute(A,Sbox1);
Nu=reshape(bitxor(Au(:,1),Au(:,3)),x,y);
A3=bitxor(Nu,A2);
cipherd_data=A3;