[row col] = size(A);
for r = 1:row
    fprintf('Working on row %d...\n',r);
    for c = 1:col
        P(r,c) = A(r,c) * A(r,c);
        fprintf('(%d %d)\n',r,c);
    end
end

%script which basically does this matrix multiplication: A .* A
%it's in row major order
%matlab uses column major order for implicit looping