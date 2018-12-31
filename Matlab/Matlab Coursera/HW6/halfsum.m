function out = halfsum(A)
[row,col] = size(A);
out = 0;


for x = 1:row
    for y = 1:col
        if y>= x
            out = out + A(x,y);
        end
    end
end

