function myarabic=roman(n)
switch n
    case 'I'
        myarabic=1;
    case 'II'
        myarabic=2;
    case 'III'
        myarabic=3;
    case 'IV'
        myarabic=4;
    case 'V'
        myarabic=5;
    case 'VI'
        myarabic=6;
    case 'VII'
        myarabic=7;
    case 'VIII'
        myarabic=8;
    case 'IX'
        myarabic=9;
    case 'X'
        myarabic=10;
    case 'XI'
        myarabic=11;
    case 'XII'
        myarabic=12;
    case 'XIII'
        myarabic=13;
    case 'XIV'
        myarabic=14;
    case 'XV'
        myarabic=15;
    case 'XVI'
        myarabic=16;
    case 'XVII'
        myarabic=17;
    case 'XVIII'
        myarabic=18;
    case 'XIX'
        myarabic=19;
    case 'XX'
        myarabic=20;

      otherwise
          myarabic=uint8(0); 

          %myarabic=0; 

             % myarabic=uint8; %#ok<NASGU>

           % myarabic='uint8'
end
  myarabic = uint8 (myarabic)
end
