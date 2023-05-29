function matr = lesson2(n, m)
    % по заданному количеству строк и столбцов генерится логическая матрица
    % с чередующимися строками и столбцами
    check = logical(true)
    matr = false(n,m);
    for i = 1:n
      for j = 1:m
        matr(i, j) = check
        check = !check
      end
      check = !check
    end
end

