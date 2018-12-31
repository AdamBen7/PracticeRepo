function B = divvy(A,k)
[row, col] = size(A);
B = zeros(row,col);

x = 1:row;
y = 1:col;

B = A./k;
B(round(A./k)~= B) = A(round(A./k)~= B) * k;
B(round(A./k)== B) = A(round(A./k)==B);

% B(x,y) = A(A(x,y)/k == round(A(x,y)/k))
% B(x,y) = A(A(x,y)/k ~= round(A(x,y)/k))







% if A(x,y)/k == round(A(x,y)/k)
%     B(x,y) = A(x,y);
% else
%     B(x,y) = A(x,y)*k;
% end
