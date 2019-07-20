function x = ErrCoef(niz1,niz2)

x = (sum(xor(niz1,niz2)))/size(niz1,2);