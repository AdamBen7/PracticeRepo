function ttl_dollars = rich(coinmat)
conversion = coinmat .*[1 5 10 25];
ttl_cents = sum(conversion,2);
%ttl_cents = pennies + 5*nickels + 10*dimes + 25*quarters
ttl_dollars = 0.01*ttl_cents;
