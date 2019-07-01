def euler001 
	sum = 0
	arr = 1...1000
	arr.each { |item|
		if (item % 3 == 0 ||item % 5 == 0)
			sum +=item 
		end
	}
	puts sum
end
puts euler001