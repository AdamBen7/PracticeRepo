function out = funbyMuhammad(in_char)
    abc = ['()+-_',setdiff('A':'Z','QZ')];
    d = ['#*','0':'9',' '];
    if all(ismember(in_char,[abc,d]))
        ii = ['     ',sprintf('%d',kron(2:9,[1 1 1]))];
        [lo,idx] = ismember(in_char,abc);
        out = in_char;
        out(lo) = ii(idx(lo));
    else
        out = [];
    end
end

% function output = dial(input)
% output = [];
% cod = double(input);
% i = 0;
% 
% for  chara = cod(1:length(input))
%     i = i + 1;
%     if chara == 42 || chara == 35 % * or #
%       continue %no change
%     elseif chara == 40 || chara == 41 || chara == 45 || chara == 32% () or - or space
%         output(i) = char(32); % space
%     elseif chara <= 57
%         output(i) = chara-48;
%     elseif chara <=67
%         output(i) = 2;
%     elseif chara <= 70
%         output(i) = 3;
%     elseif chara <= 73
%         output(i) = 4;
%     elseif chara <= 76
%         output(i) = 5;
%     elseif chara <= 79
%         output(i) = 6;
%     elseif chara <= 83
%         output(i) = 7;
%     elseif chara <= 86
%         output(i) = 8;
%     elseif chara <= 89
%         output(i) = 9;
%     else
%         return
%     end
% end
%     