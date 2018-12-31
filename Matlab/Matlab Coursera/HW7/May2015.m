function strct = May2015
v = 1;
strct.month = 'May';

while v <= 31
    strct(v).month = 'May';
    strct(v).date = v;
    if (v+6)/7 == round((v+6)/7)
        strct(v).day = 'Fri';
    elseif (v+5)/7 == round((v+5)/7)
        strct(v).day = 'Sat';
    elseif (v+4)/7 == round((v+4)/7)
        strct(v).day = 'Sun';
    elseif (v+3)/7 == round((v+3)/7)
        strct(v).day = 'Mon';
    elseif (v+2)/7 == round((v+2)/7)
        strct(v).day = 'Tue';
    elseif (v+1)/7 == round((v+1)/7)
        strct(v).day = 'Wed';
    else
        strct(v).day = 'Thu';
    end
    v = v + 1;
end







% month.dateFri = 1:7:31 %starts Friday
% month.dateSat = 2:7:31
% month.dateSun = 3:7:31
% month.dateMon = 4:7:31
% month.dateTue = 5:7:31
% month.dateWed = 6:7:31
% month.dateThu = 7:7:31
% dateFri.day = 'Fri'
% dateSat.day = 'Sat'
% dateSun.day = 'Sun'
% dateMon.day = 'Mon'
