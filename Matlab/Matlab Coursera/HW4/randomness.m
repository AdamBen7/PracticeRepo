function RANDMAT = randomness(limit, n, m)
range = (limit+1) - 1; %1 is the lower limit given for the problem. +1 for upper limit since inclusive)
RANDMAT = range .* rand(n,m) +1;
RANDMAT = floor(RANDMAT);
end