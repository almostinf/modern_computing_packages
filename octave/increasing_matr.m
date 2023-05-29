function matr = increasing_matr(n, m)
   matr = zeros(n,m)
   start = randi([0, 10])
   for i = 1:n
     matr(i, :) = start++
   end
end
