function x = Hamming84(nizBit)

nizBitHam = zeros(1,size(nizBit,2)*2);

for i = 1:4:size(nizBit,2)
    ham48 = zeros(1,8);
    
    ham48(1,1) = xor(xor(nizBit(1,i),nizBit(1,i+1)),nizBit(1,i+3));
    ham48(1,2) = xor(xor(nizBit(1,i),nizBit(1,i+2)),nizBit(1,i+3));
    ham48(1,3) = nizBit(1,i); 
    ham48(1,4) = xor(xor(nizBit(1,i+1),nizBit(1,i+2)),nizBit(1,i+3));
    ham48(1,5) = nizBit(1,i+1);  
    ham48(1,6) = nizBit(1,i+2);  
    ham48(1,7) = nizBit(1,i+3);
    ham48(1,8) = mod(sum(ham48),2);
    
    nizBitHam(1,(2*(i-1)+1):(2*(i-1)+8)) = ham48;
end

x = nizBitHam;