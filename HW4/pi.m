function count = pi(n)
  sieve = true(1, n);
sieve(1) = false;

count_primes = 0;
for i = 2:sqrt(n)
    if sieve(i)
        sieve(i*i:i:n) = false;
    end
end

count = sum(sieve);

end
