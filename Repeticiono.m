function x = Repeticiono(nizBit,n)

nizBitN = zeros(1,n*size(nizBit,2));

for i = 1:size(nizBit,2)
   for ii= 1:n
       nizBitN(1,i*n-ii+1)=nizBit(1,i);
   end
end

x = nizBitN;