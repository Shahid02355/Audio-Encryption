clear all; clc
disp('Vertical Correlation')
%________________________________________________________
orignal_image = imread('2.jpg');
Encrypted_image = imread('lena enc.bmp');
%________________________________________________________

image1=orignal_image(:,:,1);
P=double(image1);
x1 = double(P(1:end-1,:)); 
y1 = double(P(2:end,:)); 
randIndex1 = randperm(numel(x1)); 
randIndex1 = randIndex1(1:1000); 
x = x1(randIndex1); 
y = y1(randIndex1); 
Ex=(1/(1000))*sum(x);
Ey=(1/(1000))*sum(y);
        Dx=(1/(1000))*sum((x(:)-Ex).^2);
        Dy=(1/(1000))*sum((y(:)-Ey).^2);
        coxy=(1/(1000))*(sum((x-Ex).*(y-Ey)));
Red_Channel=coxy/(sqrt(Dx*Dy))
subplot(2,3,1);
scatter(x,y,5,'filled'); hold on;
xlabel({'Pixel value on location (x,y)','(a)'})
ylabel('Pixel value on location (x+1,y)')




image1=orignal_image(:,:,2);
P=double(image1);
x1 = double(P(1:end-1,:)); 
y1 = double(P(2:end,:)); 
randIndex1 = randperm(numel(x1)); 
randIndex1 = randIndex1(1:1000); 
x = x1(randIndex1); 
y = y1(randIndex1); 
Ex=(1/(1000))*sum(x);
Ey=(1/(1000))*sum(y);
        Dx=(1/(1000))*sum((x(:)-Ex).^2);
        Dy=(1/(1000))*sum((y(:)-Ey).^2);
        coxy=(1/(1000))*(sum((x-Ex).*(y-Ey)));
Green_channel=coxy/(sqrt(Dx*Dy))
subplot(2,3,2);
scatter(x,y,5,'filled'); hold on;
xlabel({'Pixel value on location (x,y)','(b)'})
ylabel('Pixel value on location (x+1,y)')

image1=orignal_image(:,:,3);
P=double(image1);
x1 = double(P(1:end-1,:)); 
y1 = double(P(2:end,:)); 
randIndex1 = randperm(numel(x1)); 
randIndex1 = randIndex1(1:1000); 
x = x1(randIndex1); 
y = y1(randIndex1); 
Ex=(1/(1000))*sum(x);
Ey=(1/(1000))*sum(y);
        Dx=(1/(1000))*sum((x(:)-Ex).^2);
        Dy=(1/(1000))*sum((y(:)-Ey).^2);
        coxy=(1/(1000))*(sum((x-Ex).*(y-Ey)));
Blue_Channel=coxy/(sqrt(Dx*Dy))
subplot(2,3,3);
scatter(x,y,5,'filled'); hold on;
xlabel({'Pixel value on location (x,y)','(c)'})
ylabel('Pixel value on location (x+1,y)')


image1=Encrypted_image(:,:,1);
P=double(image1);
x1 = double(P(1:end-1,:)); 
y1 = double(P(2:end,:)); 
randIndex1 = randperm(numel(x1)); 
randIndex1 = randIndex1(1:1000); 
x = x1(randIndex1); 
y = y1(randIndex1); 
Ex=(1/(1000))*sum(x);
Ey=(1/(1000))*sum(y);
        Dx=(1/(1000))*sum((x(:)-Ex).^2);
        Dy=(1/(1000))*sum((y(:)-Ey).^2);
        coxy=(1/(1000))*(sum((x-Ex).*(y-Ey)));
Red_Channel=coxy/(sqrt(Dx*Dy))
subplot(2,3,4);
scatter(x,y,5,'filled'); hold on;
xlabel({'Pixel value on location (x,y)','(d)'})
ylabel('Pixel value on location (x+1,y)')

image1=Encrypted_image(:,:,2);
P=double(image1);
x1 = double(P(1:end-1,:)); 
y1 = double(P(2:end,:)); 
randIndex1 = randperm(numel(x1)); 
randIndex1 = randIndex1(1:1000); 
x = x1(randIndex1); 
y = y1(randIndex1); 
Ex=(1/(1000))*sum(x);
Ey=(1/(1000))*sum(y);
        Dx=(1/(1000))*sum((x(:)-Ex).^2);
        Dy=(1/(1000))*sum((y(:)-Ey).^2);
        coxy=(1/(1000))*(sum((x-Ex).*(y-Ey)));
Green_Channel=coxy/(sqrt(Dx*Dy))
subplot(2,3,5);
scatter(x,y,5,'filled'); hold on;
xlabel({'Pixel value on location (x,y)','(e)'})
ylabel('Pixel value on location (x+1,y)')

image1=Encrypted_image(:,:,3);
P=double(image1);
x1 = double(P(1:end-1,:)); 
y1 = double(P(2:end,:)); 
randIndex1 = randperm(numel(x1)); 
randIndex1 = randIndex1(1:1000); 
x = x1(randIndex1); 
y = y1(randIndex1); 
Ex=(1/(1000))*sum(x);
Ey=(1/(1000))*sum(y);
        Dx=(1/(1000))*sum((x(:)-Ex).^2);
        Dy=(1/(1000))*sum((y(:)-Ey).^2);
        coxy=(1/(1000))*(sum((x-Ex).*(y-Ey)));
Blue_Channel=coxy/(sqrt(Dx*Dy))
subplot(2,3,6);
scatter(x,y,5,'filled'); hold on;
xlabel({'Pixel value on location (x,y)','(f)'})
ylabel('Pixel value on location (x+1,y)')