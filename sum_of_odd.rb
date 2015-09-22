class SumOfOddNumbers
	def initialize
		# odd_numbers
	end

	def odd_numbers(rows)
		# Rows is always the same number of odd numbers you'll get
		# If rows is 3 then loop through 3 times starting with one, 
		# and adding 2 to the number. Result -> 1, 3, 5
		# Take result and store as an array
		current_number = 1
		stored_numbers = [1]

		rows.times do 
			current_number += 2
			stored_numbers << current_number
		end
		p stored_numbers
	end

	def row_sum_odd_numbers(rows_to_sum)
		odd_numbers(rows_to_sum - 1)
	end

end

a = SumOfOddNumbers.new
a.row_sum_odd_numbers(4)