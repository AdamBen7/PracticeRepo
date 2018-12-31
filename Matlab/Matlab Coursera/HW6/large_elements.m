function out = large_elements(X)
[row, col] = size(X);
out = [];

for x = 1:row
    for y = 1:col
        if X(x,y) > x+y
            out = [out; x y];
        end
    end
end
