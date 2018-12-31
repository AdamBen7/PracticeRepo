function Vec = sort3(x,y,z)
%SORT3 sorting program
%it sorts the 3 values in increasing order
%terribe coding... gotta repeat in a nicer algorithm

if x < y && x < z
    a = x
    if z > y
        b = y
        c = z
    else
        b = z
        c = y
    end
    
elseif x > y && x < z
    a = y
    b = x
    c = z
    
elseif x > y && x > z && z > y
    a = y
    b = z
    c = x
elseif x > y && x > z && z < y
    a = z
    b = y
    c = x
elseif x == y || y == z || x == z
    if x == y
        if x > z
            Vec = [z x y]
        else
            Vec = [x y z]
        end
    elseif y == z
        if y > x
            Vec = [x y z]
        else
            Vec = [y z x]
        end
    elseif x == z
        if x > y 
            Vec = [y x z]
        else
            Vec = [x z y]
        end
    end
    return
    
else
    a = z
    if x > y
        b = y
        c = x
    else
        b = x
        c = y
    end
end

Vec = [a b c]


%if x < y && x < z
 %   x=x;
  %  if y < z
   %     Vec = [x, y, z]; %goes straight to creating vector
    %else
     %   a = y;
      %  y = z;
       % z = a;
        %Vec = [x, y, z];
    %end
%end
%if x > y && y > z
 %   Vec = [z , y, x]; %got lazy
%elseif x > y && y < z
 %   if z > x 
  %      Vec = [y, x, z];
   % else
    %    Vec = [y, z, x];
    %end
%end
    

