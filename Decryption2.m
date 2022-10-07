function Decipherd_data=Decryption2(A,Au,n)
[x,y]=size(A);
Nu=mod(reshape(bitxor(Au(:,1),Au(:,3)),x,y),n);
A3=bitxor(Nu,A);
Sbox1=LFT4128(78,34,56,12);
J1=substitute1(A3,Sbox1);
Decipherd_data=J1;