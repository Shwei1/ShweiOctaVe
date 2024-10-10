n = input("Enter the amount of values in the vector: " );
v = zeros(1,n);

for i = 1:n
  v(i) = input(sprintf('Enter value %d: ', i));
 end

 disp("Your vector is: ");
 disp(v);
