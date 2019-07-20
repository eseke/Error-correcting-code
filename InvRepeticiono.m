function x = InvRepeticiono(nizBitRep,n)

nizBit = zeros(1,size(nizBitRep,2)/n);

for i = 1:n:size(nizBitRep,2)
   tmp = sum(nizBitRep(1,i:i+n-1));
   if tmp > ((n-1)/2)
       nizBit(1,(i+n-1)/n) = 1;
   else
       nizBit(1,(i+n-1)/n) = 0;
   end
end

x = nizBit;