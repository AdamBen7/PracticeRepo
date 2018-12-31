function f = fibo(n)
if ( ~isscalar(n) || n < 1 || n ~= fix(n)) %error checking
    error('n must be a positive integer!');
end
 
f(1) = 1;%first in series
f(2) = 1;%second 
for ii = 3:n
    f(ii) = f(ii-2) + f(ii-1);
end

%fibonnacci series
%cant be done by implicit looping. 
%Perfect example for reason why we need explicit looping