function gen = generationXYZ(yearofbirth)
if yearofbirth < 1966, gen = 'O';
elseif yearofbirth <1981, gen = 'X';
elseif yearofbirth <2000, gen = 'Y';
elseif yearofbirth <= 2012, gen = 'Z';
else gen = 'K'; end
