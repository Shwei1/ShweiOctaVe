function matrix = matrix_input()
  disp('Enter 9 values for the matrix: ')
  matrix = zeros(3, 3);
  for i = 1:3
    for j = 1:3
      matrix(i, j) = input(' ');
    endfor
  end
  disp('Finished matrix input')
end

