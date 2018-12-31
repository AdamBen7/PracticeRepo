function out = square_wave(n)
t = 0:4*pi/(1001):4*pi;
total = 0;
out = 0;

for k = 1:n
    for t = 0:4*pi/(1001):4*pi
        x = sin((2*k-1)*t)/(2*k-1)
    end
    total = total + x
    out(k) = total
end
