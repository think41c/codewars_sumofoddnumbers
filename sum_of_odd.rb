class SumOfOddNumbers
	def initialize
		odd_numbers
	end

	def odd_numbers
		odd = [1,3,5,7,9]   
	end

	def row_sum_odd_numbers(rows_to_sum)
		rows_to_sum = 4
		p rows_to_sum
	end

end

a = SumOfOddNumbers.new
a.row_sum_odd_numbers(2)