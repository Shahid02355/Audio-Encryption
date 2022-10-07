clc;
clear;
[A,fs] = audioread('11 News Intro.wav','native');
[x1,y1]=size(A);
P_Au=permutee(A);
%%%%%%%%%%%%%%%%%%%%%Matrix Generation%%%%%%%%%%%%%%
Binary_Matrix=Bi_matrix(P_Au); 
%%%%%%%%%%%%%%%%%%%%%%Positive Conversion%%%%%%%%%%%
Positive_Au=double(abs(P_Au));
%%%%%%%%%%%%%%%%%%%%Data Conversion%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
convert_Au_eight=double(convert_uint_eight(Positive_Au));
convert_Au_seven=double(convert_uint_seven(Positive_Au));
%%%%%%%%%%%%%%%%%%%%%%%%%%Encryption%%%%%%%%%%%%%
z=length(convert_Au_eight);
Au=generate_chao1(z,256);
data1=Encryption1(convert_Au_eight,Au);
data2=Encryption2(convert_Au_seven,Au,128);
% %%%%%%%%%%%%%%%%%%%%%%%%%Revese Coversion%%%%%%%%%%%%
Reverse_Au=reverse_uint(data1,data2);
Encrypt_Au=int16(Reverse_Au);
Encrypt_Au=reshape(Encrypt_Au,x1,y1);
Encrypt_Au=Apply_bi(Encrypt_Au,Binary_Matrix);
audiowrite('Encrypted.wav',Encrypt_Au, fs)
 



% seq=generate_chao(x*y,x*y);