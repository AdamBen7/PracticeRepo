function rslt = older(y1, m1, d1, y2, m2, d2)
if y1 < y2
    rslt = 1
elseif y1>y2
    rslt = -1
else %means same year
    if m1 < m2
        rslt = 1
    elseif m1>m2
        rslt = -1
    else
        if d1 < d2
            rslt = 1
        elseif d1 > d2
            rslt = -1
        else
            rslt = 0
        end
    end
end
