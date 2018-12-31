function true_false = movies(hr1,min1,durmin1, hr2,min2,~)

min1 = hr1*60 + min1;
min1fin = min1 + durmin1;

min2 = hr2*60+min2;

if min1fin > min2
    true_false = false;
elseif min2 - min1fin > 30
    true_false = false;
else
    true_false = true;
end

