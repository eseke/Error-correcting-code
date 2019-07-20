function x = genErrBit(nizBit,verovErr)

nizErr = genNiz(size(nizBit,2),1-verovErr);

tmp = xor(nizBit,nizErr);
x = tmp;