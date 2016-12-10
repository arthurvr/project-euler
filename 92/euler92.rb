def squareDigits(n)
	(n == 0 ? 0 : squareDigits(n / 10)) + (n % 10)**2
end

$results = [false]*10_000_000

def chainEnd(n)
	if n == 1 or n == 89
		return n
	end

	if !$results[n]
		$results[n] = chainEnd(squareDigits(n))
	end

	$results[n]
end

count = 0
(1..10_000_000).each do |i|
	if chainEnd(i) == 89
		count += 1
	end
end

puts count
