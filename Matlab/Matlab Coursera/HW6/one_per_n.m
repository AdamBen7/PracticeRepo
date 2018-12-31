function n = one_per_n(x)
out = 0;
n = 0;

while n <= 10000
    n = n + 1;
    out = out + 1/n;
    if out >= x
        break
    end
end

if n > 10000
    n = -1;
end


