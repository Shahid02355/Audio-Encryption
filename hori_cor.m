function horizental_correlation=analysis(Image) 
x = Image(:,1:end-1);              
y = Image(:,2:end);              
randIndex = randperm(numel(x));   
randIndex = randIndex(1:1500);    
xRand = x(randIndex);             
yRand = y(randIndex);             

scatter(xRand,yRand,5,'filled')
horizental_correlation=corr2(xRand,yRand);   