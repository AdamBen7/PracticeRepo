function rtrn = classify(x)
if prod(size(x)) == 0
    rtrn = -1;
    
elseif prod(size(x)) == 1
    rtrn = 0
    
elseif prod(size(x)) + 1 == sum(size(x))
    rtrn = 1
else
    rtrn = 2
    
end
