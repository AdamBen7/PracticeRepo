function idmat = identity(n)
idmat = zeros(n);
idmat(1:n+1:n^2) = 1;
