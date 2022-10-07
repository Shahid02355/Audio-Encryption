function chaos=generate_chaoexample(n,b1)
x(1)=-1.3705;
y(1)=0.3151;
z(1)=0.0638;
a=.5;
b=.5;
c=.5;
for i=1:n-1
    x(i+1)=a*sin(x(i))+y(i)+c*cos(z(i));
    y(i+1)=sin(x(i))*cos(y(i)+x(i)*tan(z(i)));
    z(i+1)=y(i)*cos(i)+x(i)*sin(i)+b*atan(z(i));
end
x1=floor(mod(x*10^7,b1));
y1=floor(mod(y*10^7,b1));
z1=floor(mod(z*10^7,b1));
chaos=x1;
