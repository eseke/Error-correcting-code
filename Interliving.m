function x = Interliving(i,nizBit)

if mod(size(nizBit,2),i)==0
    k = size(nizBit,2)/i;
else
    k = ceil(size(nizBit,2)/i);
end

tmp = zeros(i,k);
for j = 0:(i-2)
    tmp((j+1),:) = nizBit(1,j*k+1:(j+1)*k);
end

if mod(size(nizBit,2),i)==0
    tmp(i,:) = nizBit(1,(i-1)*k+1:i*k);
else
    tmp(i,1:mod(size(nizBit,2),k)) = nizBit(1,(i-1)*k+1:(i-1)*k+mod(size(nizBit,2),k));
end

rez = zeros(1,i*k);
for j = 1:k
    rez(1,(j-1)*i+1:j*i) = tmp(:,j)';
end

x = rez;
end