function w = replace_me(v,a,b,c)

if nargin < 3
    b = 0;
    c = 0;
end

if nargin < 4
   c = b;
end

% fprintf('value of b: %d\n',b)
% fprintf('value of c: %d\n',c)


j = 0

for x = 1:length(v)
    if v(x) ~= a
        j = j + 1
        w(j) = v(x);
    else
        j = j + 1;
        w(j) = b;
        j = j + 1;
        w(j) = c;
    end
end
        
            