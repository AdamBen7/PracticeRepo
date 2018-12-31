function v = int_col(n)
%o = 3:2:n;
%e = 2:2:n;
 
%v = [o e]'
v = (2:1:n)'
v(n,1) = 1

end