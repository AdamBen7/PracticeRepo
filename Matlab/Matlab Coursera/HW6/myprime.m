function out = myprime(n)
possible_factrs = [];
if n == 2 || n == 3
    out = true;
    return
end

if n > 2
    x = n/2;
end

if round(x) == x
    out = false;
else
    for possible_factrs = 3:2:ceil(n/2)
        x = n/possible_factrs;
        if round(x) == x
            out = false;
            return
        else
            out = true;
        end
    end
end

end
% if out == n
%     out = true;
% else
%     out = false;c
% end