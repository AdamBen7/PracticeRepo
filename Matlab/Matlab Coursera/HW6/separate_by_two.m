function [even odd] = separate_by_two(A)

A = A(:); %column version of matrix

[row,col] = size(A);
x = 1:row;

even = A(round(A(x)/2) == A(x)/2);
odd = A(round(A(x)/2) ~= A(x)/2);

even = even';
odd = odd'; %convert output to row vector

% even = [];
% odd = [];
% j = 0;
% k = 0;
% if round(A(x)/2) == A(x)/2
%     j = j + 1;
%     even = A(x)
% else
%     k = k + 1;
%     odd = A(x)
% end
