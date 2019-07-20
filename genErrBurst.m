function x = genErrBurst(nizBit,Nburst)

tmp = nizBit;

poz = floor(rand(1,40/Nburst)*(size(nizBit,2)-Nburst));

for i = 1:size(poz,2)
    tmp(1,poz(1,i):(poz(1,i)+Nburst-1)) = xor(tmp(1,poz(1,i):poz(1,i)+Nburst-1),ones(1,Nburst));
end

x = tmp;