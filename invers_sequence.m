function inver=invers_sequence(seq)
[y1,y2]=size(seq);
y1=y1*y2;
A=zeros(1,y1);
for i=1:y1;
A(seq(i))=i;
end
inver=A;