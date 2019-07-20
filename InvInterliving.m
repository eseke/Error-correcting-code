function x = InvInterliving(i,nizBit,NSim)

k = size(nizBit,2)/i;

tmp = zeros(i,k);
for j = 1:k
    tmp(:,j) = nizBit(1,((j-1)*i+1):(j*i));
end

rez = zeros(1,i*k);
for j = 1:i
    rez(1,(j-1)*k+1:j*k) = tmp(j,:)';
end

x = rez(1,1:NSim);
end