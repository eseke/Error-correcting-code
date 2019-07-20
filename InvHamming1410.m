function x = InvHamming1410(nizBitHam)

nizBit = zeros(1,size(nizBitHam,2)*10/14);

for i = 1:14:size(nizBitHam,2)
    s = zeros(1,4);
    s(1,1) = xor(xor(xor(xor(xor(xor(nizBitHam(1,i),nizBitHam(1,i+2)),nizBitHam(1,i+4)),nizBitHam(1,i+6)),nizBitHam(1,i+8)),nizBitHam(1,i+10)),nizBitHam(1,i+12));
    s(1,2) = xor(xor(xor(xor(xor(xor(nizBitHam(1,i+1),nizBitHam(1,i+2)),nizBitHam(1,i+5)),nizBitHam(1,i+6)),nizBitHam(1,i+9)),nizBitHam(1,i+10)),nizBitHam(1,i+13));
    s(1,3) = xor(xor(xor(xor(xor(xor(nizBitHam(1,i+3),nizBitHam(1,i+4)),nizBitHam(1,i+5)),nizBitHam(1,i+6)),nizBitHam(1,i+11)),nizBitHam(1,i+12)),nizBitHam(1,i+13));
    s(1,4) = xor(xor(xor(xor(xor(xor(nizBitHam(1,i+7),nizBitHam(1,i+8)),nizBitHam(1,i+9)),nizBitHam(1,i+10)),nizBitHam(1,i+11)),nizBitHam(1,i+12)),nizBitHam(1,i+13));
    if (mod(sum(nizBitHam(1,i:i+13)),2)==1 && sum(s)~=0 && sum(s)~=4)
        nizBitHam(1,i-1+s(1,1)+s(1,2)*2+s(1,3)*4+s(1,4)*8) = ~nizBitHam(1,i-1+s(1,1)+s(1,2)*2+s(1,3)*4+s(1,4)*8);
    end
    tmp = zeros(1,10);
    tmp(1,1) = nizBitHam(1,i+2);
    tmp(1,2) = nizBitHam(1,i+4);
    tmp(1,3) = nizBitHam(1,i+5);
    tmp(1,4) = nizBitHam(1,i+6);
    tmp(1,5) = nizBitHam(1,i+8);
    tmp(1,6) = nizBitHam(1,i+9);
    tmp(1,7) = nizBitHam(1,i+10);
    tmp(1,8) = nizBitHam(1,i+11);
    tmp(1,9) = nizBitHam(1,i+12);
    tmp(1,10) = nizBitHam(1,i+13);
    nizBit(1,(i-1)*10/14+1:(i-1)*10/14+10)=tmp(1,:);
end

x = nizBit;