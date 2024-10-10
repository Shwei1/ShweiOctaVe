file = fopen('/Users/shwei/ShweiOctaVe/HW1/output1.txt', "w");

for i = 1:20
  fprintf(file, "%d! = %d\n", i, factorial(i));
end

fclose(file);

