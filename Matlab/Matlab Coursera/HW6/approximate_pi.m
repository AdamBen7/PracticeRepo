function [approx, k]= approximate_pi(delta)
k = -1;
approx = 0;
body = 0;

while abs(pi - approx) > delta
    k = k+1;
    temp = ((-3)^(-k))/(2*k+1);
    body = body + temp;
    approx = sqrt(12)*body
end