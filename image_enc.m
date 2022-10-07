clc
clear
A=rgb2gray(imread('download.jpg'));
z=length(A);
P_Au=permutee(A);
% Au=generate_chao1(z,256);
% data1=Encryption1(A,Au)