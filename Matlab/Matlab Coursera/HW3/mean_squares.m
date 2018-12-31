function mm = mean_squares(nn)
list = [1:nn]
mm = nn\(sum(list.^2))
end
