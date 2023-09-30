function hashed = HashSquares(TBH)

hash_2 = CapitalsToInt(TBH);

hash_3 = hash_2^2;

hash_4 = int2str(hash_3);
% disp(hash_4)

hash_5 = length(hash_4);

hash_mid = hash_5/2;

hash_L2 = hash_mid - 1;
hash_R2 = hash_mid + 2;

hash_mid4 = hash_4(hash_L2:hash_R2);
% disp(hash_mid4)

hashed = str2double(hash_mid4);

end