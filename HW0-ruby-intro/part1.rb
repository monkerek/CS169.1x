def sum(array)
	if array.empty?
		0
	else
		res = 0
		array.each do |value|
			res += value
		end
	end
end

def max_2_sum(array)
	if array.empty?
		0
	elsif array.length == 1
		array[0]
	else
		first = array[0]
		second = array[1]
		if first < second
			first, second = second, first
		end
		array.each do |value|
			if value > first
				second = first
				first = value
			elsif value > second
				second = falue
			end
		end
		first + second
	end
end

def sum_to_n?(array, n)
	if array.empty? or n == 0
		return true
	else
		array.sort
		left = 0
		right = array.length - 1
		while left < right
			sum = array[left] + array[right]
			if sum == n
				return true
			elsif sum > n
				right -= 1
			else
				left += 1
			end
		end
	end
	return false
end
