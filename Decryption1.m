function Decipherd_data=Decryption1(A,Au)
[x,y]=size(A);
Nu=reshape(bitxor(Au(:,1),Au(:,3)),x,y);
A3=bitxor(Nu,A);
 Sbox1=LFT1(78,34,56,12);
 A2=substitute(A3,Sbox1);
Decipherd_data=A2;