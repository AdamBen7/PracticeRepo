function [mt,s] = mtable(n,m)
mt = (1:n)'*(1:m);
s = sum(sum(mt));
%took a while. Remember double the sum function. Also review matrix
%multiplication.