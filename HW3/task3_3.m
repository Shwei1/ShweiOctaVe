S = [2 1 3 10; 1 1 1 6; 1 3 2 13];

solution = system3x3solver(S);

v = zeros(1, 3);
disp('Enter a 3 element vector:')

for i = 1:3
  v(i) = input('');
end

disp('The solution is:')
disp(sprintf("x = %d;", solution(1)));
disp(sprintf("y = %d;", solution(2)));
disp(sprintf("z = %d;", solution(3)));

epsilon = 1e-8;
if norm(v' - solution) < epsilon
  disp('Entered vector is the solution!')
else
  disp('Entered vector is NOT the solution.')
end

