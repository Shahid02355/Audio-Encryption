clc;
clear;
[A,fs] = audioread('10 Desi.wav','native');
B=A(17:24,1:2);
A=reshape(B,4,4);
Binary_Matrix=ExampleBi_matrix(A);
permut=Example_permute(A);
Positive_Au=double(abs(permut));
convert_Au_eight=reshape(double(convert_uint_eight(Positive_Au)),4,4);
convert_Au_seven=reshape(double(convert_uint_seven(Positive_Au)),4,4);
z=16;
%%%%%%%%%%%%%%%%%%%%%%Data 1%%%%%%%%%%%%%%%%%%%%%%
Au=reshape(generate_chaoexample(z,256),4,4);
Sbox1=LFT1(12,34,56,78);
 A2=sub_bytes(convert_Au_eight,Sbox1);
 Data1=bitxor(A2,Au);
%%%%%%%%%%%%%%%%%%%%%%Data 2%%%%%%%%%%%%%%%%%%%%%%%%%
Sbox2=LFT4128(12,34,56,78);
J1=sub_bytes(convert_Au_seven,Sbox2');
Au=reshape(generate_chaoexample(z,128),4,4);
Data2=bitxor(Au,J1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Reverse_Au=reverse_uint(Data1,Data2);
Encrypt_Au=int16(Reverse_Au);
Encrypt_Au=Apply_bi(Encrypt_Au,Binary_Matrix);