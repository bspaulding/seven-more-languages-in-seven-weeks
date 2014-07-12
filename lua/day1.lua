function is_even(n)
	return 0 == n % 2
end

print "2 is even? "
print(is_even(2))
print "3 is even? "
print(is_even(3))

function is_prime(n)
	print('is_prime(' .. n .. ')')
	for m = 2, n - 1 do
		if n % m == 0 then
			return false
		end
	end

	return true
end

function printFirst10EvenPrimes()
	local nPs = 0
	local n = 0
	while n < 10 and nPs <= 10 do
		if is_prime(n) and is_even(n) then
			print(n)
			nPs = nPs + 1
		end
		n = n + 1
	end
end

-- Takes a LONG time, because prime is naive
-- printFirst10Primes()

function for_loop(a,b,f)
	local n = a
	while n <= b do
		f(n)
		n = n + 1
	end
end

for_loop(1,10, print)

function reduce(max, init, f)
	local n = 1
	local acc = init
	while n <= max do
		acc = f(acc, n)
		n = n + 1
	end
	return acc
end

function times(a,b)
	return a * b
end

function factorial(n)
	return reduce(n, 1, times)
end

print("factorial of 5 =")
print(factorial(5))
