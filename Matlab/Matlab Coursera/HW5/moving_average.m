function rtrn = moving_average(x)
persistent y
persistent yperm
persistent buffer

if isempty(yperm)
    yperm = 1
else
    yperm = yperm + 1;
    if yperm >= 25 %sloppy step. couldn't do elseif?
    yperm = 25;
    end
end

if isempty(y)
    y = 1
else
    y = y + 1;
    if y == 26
    y = 1;
    end
end
if isempty(buffer)
    buffer = zeros(1,25)
    buffer(1,y) = x
else
    buffer(1,y) = x
end

rtrn = sum(buffer)/yperm
