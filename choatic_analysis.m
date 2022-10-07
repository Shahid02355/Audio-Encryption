clc;
clear;
x(1)=.0005;
y(1)=.00001;
z(1)=.0038;
a=15.13;
b=0.66;
c=1.33332;
d=.1;
for i=1:5000000
    x(i+1)=a*sin(x(i))+y(i)+c*cos(z(i));
    y(i+1)=sin(x(i))*cos(y(i)+x(i)+tan(z(i)));
    z(i+1)=y(i)*cos(i)+x(i)*sin(i)+b*atan(z(i))-d;
end

xlabel('time')
 figure,plot(x,y,'b.','markersize',0.5); hold on
 xlabel({'x(i)','(a)'})
 ylabel('y(i)')
 figure,plot(y,z,'b.','markersize',0.5);
 xlabel({' y(i)','(b)'})
 ylabel(' z(i)')
 figure,plot(x,z,'b.','markersize',0.5);
 xlabel({'x(i)','(c)'})
 ylabel(' z(i)')
 figure,plot3(x,y,z,'b.','markersize',0.5); 
