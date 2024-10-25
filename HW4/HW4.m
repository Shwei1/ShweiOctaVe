diary("output4.txt");
format long g

n = 10^6;
tic
sieve = true(1, n);
sieve(1) = false;

for i = 2:sqrt(n)
    if sieve(i)
        sieve(i*i:i:n) = false;
    end
end

primes = find(sieve);


disp('All primes in the range found')
toc

tic
twins = 0;
for i = 1:length(primes) - 1
    if primes(i+1) - primes(i) == 2
        twins = twins + 1;
    end
end



disp('Found all twins in the range, count:')
disp(twins)
toc

pi_x = cumsum(sieve);
tic
x1 = 2:10^6;
y1 = pi_x(x1);
y2 = x1 ./ log(x1);

plot(x1, y1, x1, y2);
xlabel('x');
ylabel('f(x)');
title('Comparison of n/log(n) and \pi(x) ');
disp('Plot built.')
toc

tic
num_random_numbers = 10^4;

lower_bound = 10^4;
upper_bound = 10^5 - 1;

random_numbers = randi([lower_bound, upper_bound], 1, num_random_numbers);


prime_count = 0;

for i = 1:num_random_numbers
    if isprime(random_numbers(i))
        prime_count = prime_count + 1;
    end
end


disp('Percentage of primes: ')
disp(100 * prime_count / num_random_numbers)
disp('%')
toc

tic

new_random_numbers = randi([lower_bound, upper_bound], 1, num_random_numbers);
clear_numbers = new_random_numbers(mod(new_random_numbers, 2) ~= 0 & mod(new_random_numbers, 3) ~= 0 & mod(new_random_numbers, 5) ~= 0 & mod(new_random_numbers, 7) ~= 0 & mod(new_random_numbers, 11) ~= 0);
prime_count = 0;
for i = 1:num_random_numbers
    if isprime(new_random_numbers(i))
        prime_count = prime_count + 1;
    end
end


disp('Percentage of primes not divisible by 2,3,5,7,11: ')
disp(100 * prime_count / num_random_numbers)
disp('%')
toc

strpi = "3141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381";
stre = "271828182845904523536028747135266249775724709369995957496696762772076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069";

piprime = 0;
for i = 1:length(strpi)
  current = strpi(i:i+9);
  if isprime(str2num(current))
    piprime = str2num(current);
    break
  endif
end

eprime = 0;
for i = 1:length(stre)
  current = stre(i:i+9);
  if isprime(str2num(current))
    eprime = str2num(current);
    break
  endif
end

disp('The first 10 digit prime in pi is:')
disp(piprime)
disp('The first 10 digit prime in e is:')
disp(eprime)
toc
diary off;






