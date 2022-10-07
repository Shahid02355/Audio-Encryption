function sbox=LFT4128(a,b,c,d)
for i=0:127
   sett(1,i+1)=i; 
end
sett=reshape(sett,16,8);
sett=sett';
% mod_poly = bin2dec ('110001101');
mod_poly = 145;

for i = 0:127
    f(i+1) = bitxor(poly_mult1(a, i ,mod_poly),b);
    g(i+1) = bitxor(poly_mult1(c, i ,mod_poly),d);
    if f(i+1)==g(i+1)
        k(i+1)=1;
    else if g(i+1)==0
            k(i+1)= 1000;
        else
        k(i+1) = poly_mult1(f(i+1), find_inverse1(g(i+1),mod_poly), mod_poly);
        end
    end
end
box = reshape(k,16,8);
sbox=box';
%duplicate and missing replacement
%command show location of discontinuity
for i=0:127
    if bitxor(poly_mult1(c, i ,mod_poly),d)==0
        disc_loc=i;%discontinuity location
    end
end
value_disc=sett(find(~ismember(sett,box)));%discontinuos value
sbox(find(~ismember(sbox,sett)))=sett(find(~ismember(sett,sbox)));
