function abs_dif = neighbor(v)
n = length(v);
count = 0;

for x = 2:n
    count = count +1;
    abs_dif(count) = abs(v(x) - v(x-1));
end

if isvector(v) == 0 || length(v)<=1
    abs_dif = [];
end