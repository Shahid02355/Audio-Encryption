function subb=sub_b(I,sbox)
 imagesize=size(I);
   for a = 1:imagesize(1)
    for b = 1:imagesize(2)
        c = dec2bin(I(a,b),8);
        d = [c(1) c(2) c(3) c(4)];
        e = [c(5) c(6) c(7) c(8)];
        f = bin2dec(d);
        g = bin2dec(e);
        J(a,b) = sbox(f+1,g+1);
    end
end
subb=J;