function uint8_entry=convert_uint_eight(B)
p_A=abs(B);
AAA=de2bi(p_A,15);
[x1,y1]=size(AAA);
D=mat2tiles(AAA,2*x1,8);
D2=bi2de(D{1,2});
uint8_entry=D2;