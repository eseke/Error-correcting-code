function x = Hamming1410(nizBit)

nizBitHam = zeros(1,size(nizBit,2)/10*14);

for i = 1:10:size(nizBit,2)
    ham1410 = zeros(1,14);
    
    ham1410(1,1)  = xor(xor(xor(xor(xor(nizBit(1,i),nizBit(1,i+1)),nizBit(1,i+3)),nizBit(1,i+4)),nizBit(1,i+6)),nizBit(1,i+8));
    ham1410(1,2)  = xor(xor(xor(xor(xor(nizBit(1,i),nizBit(1,i+2)),nizBit(1,i+3)),nizBit(1,i+5)),nizBit(1,i+6)),nizBit(1,i+9));
    ham1410(1,3)  = nizBit(1,i); 
    ham1410(1,4)  = xor(xor(xor(xor(xor(nizBit(1,i+1),nizBit(1,i+2)),nizBit(1,i+3)),nizBit(1,i+7)),nizBit(1,i+8)),nizBit(1,i+9));
    ham1410(1,5)  = nizBit(1,i+1);  
    ham1410(1,6)  = nizBit(1,i+2);  
    ham1410(1,7)  = nizBit(1,i+3);
    ham1410(1,8)  = xor(xor(xor(xor(xor(nizBit(1,i+4),nizBit(1,i+5)),nizBit(1,i+6)),nizBit(1,i+7)),nizBit(1,i+8)),nizBit(1,i+9));
    ham1410(1,9)  = nizBit(1,i+4);  
    ham1410(1,10) = nizBit(1,i+5);
    ham1410(1,11) = nizBit(1,i+6);  
    ham1410(1,12) = nizBit(1,i+7);  
    ham1410(1,13) = nizBit(1,i+8);
    ham1410(1,14) = nizBit(1,i+9);
    
    nizBitHam(1,(14*(i-1)/10+1):(14*(i-1)/10+14)) = ham1410;
end

x = nizBitHam;