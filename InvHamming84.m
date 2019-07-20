function x = InvHamming84(nizBitHam)

nizBit = zeros(1,size(nizBitHam,2)/2);

for i = 1:8:size(nizBitHam,2)
    s = zeros(1,3);
    s(1,1) = xor(xor(xor(nizBitHam(1,i),nizBitHam(1,i+2)),nizBitHam(1,i+4)),nizBitHam(1,i+6));
    s(1,2) = xor(xor(xor(nizBitHam(1,i+1),nizBitHam(1,i+2)),nizBitHam(1,i+5)),nizBitHam(1,i+6));
    s(1,3) = xor(xor(xor(nizBitHam(1,i+3),nizBitHam(1,i+4)),nizBitHam(1,i+5)),nizBitHam(1,i+6));
    if (mod(sum(nizBitHam(1,i:i+7)),2)==1 && sum(s)~=0)
        nizBitHam(1,i-1+s(1,1)+s(1,2)*2+s(1,3)*4) = ~nizBitHam(1,i-1+s(1,1)+s(1,2)*2+s(1,3)*4);
    end
    tmp = zeros(1,4);
    tmp(1,1) = nizBitHam(1,i+2);
    tmp(1,2) = nizBitHam(1,i+4);
    tmp(1,3) = nizBitHam(1,i+5);
    tmp(1,4) = nizBitHam(1,i+6);
    nizBit(1,(i-1)/2+1:(i-1)/2+4)=tmp(1,:);
end

x = nizBit;