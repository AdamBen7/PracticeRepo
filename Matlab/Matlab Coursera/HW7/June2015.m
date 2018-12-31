function cel = June2015
cel = cell(30,3);
i = 1;
while i <= 30
    cel{i,1} = 'June';
    [num, cel{i,3}] = weekday(datenum(2015, 6, i));
    cel{i,2} = i;
    i = i + 1;
end
