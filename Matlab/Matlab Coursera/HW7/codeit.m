function coded = codeit(txt)
cod = double(txt);
i = 1;

for eachletter = cod(1:length(cod))
    if eachletter == 32||eachletter > 122||eachletter < 65|| (eachletter < 97 && eachletter > 90) 
        i = i + 1;
        
    elseif eachletter > 109.5 
        flipped = eachletter - 109.5;
        cod(i) = 109.5 - flipped;
        i = i + 1;
    elseif eachletter < 109.5 && eachletter > 90
        flipped = 109.5 - eachletter;
        cod(i) = 109.5 + flipped;
        i = i + 1;
    elseif eachletter < 90 && eachletter > 77.5
        flipped = 77.5 - eachletter;
        cod(i) = 77.5 + flipped;
        i = i + 1;
    else
        flipped = eachletter - 77.5;
        cod(i) = 77.5 - flipped;
        i = i + 1;
    end
end

coded = char(cod);









% cod = double(txt);
% flipper = abs(cod-97);
% flipped = 122 - flipper
% 
% coded = char(flipped)