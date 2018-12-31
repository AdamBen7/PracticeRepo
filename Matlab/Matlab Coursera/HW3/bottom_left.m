function n_by_n = bottom_left(N,n)
[m,b] = size(N)
n_by_n = N(m-n+1:m , 1:n)
end