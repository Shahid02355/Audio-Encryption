% clc;
% clear;
[A1,fs] = audioread('Encrypted.wav','native');
[x1,y1]=size(A1);
%%%%%%%%%%%%%%%%%%%%%Matrix Generation%%%%%%%%%%%%%%
Binary_Matrix1=Bi_matrix(A1); 
%%%%%%%%%%%%%%%%%%%%%%Positive Conversion%%%%%%%%%%%
Positive_Au1=double(abs(A1));
%%%%%%%%%%%%%%%%%%%%Data Conversion%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
convert_Au_eight1=double(convert_uint_eight(Positive_Au1));
convert_Au_seven1=double(convert_uint_seven(Positive_Au1));
%%%%%%%%%%%%%%%%%%%%%%%%%%Encryption%%%%%%%%%%%%%
z=length(convert_Au_eight1);
Au=generate_chao1(z,256);
data11=Decryption1(convert_Au_eight1,Au);
data22=Decryption2(convert_Au_seven1,Au,128);
% %%%%%%%%%%%%%%%%%%%%%%%%%Revese Coversion%%%%%%%%%%%%
Reverse_Au1=reverse_uint(data11,data22);
Encrypt_Au1=int16(Reverse_Au1);
Encrypt_Au1=reshape(Encrypt_Au1,x1,y1);
Encrypt_Au1=Apply_bi(Encrypt_Au1,Binary_Matrix1);
Decrypted=in_permutee(Encrypt_Au1);
audiowrite('Decrypted.wav',Decrypted, fs)
