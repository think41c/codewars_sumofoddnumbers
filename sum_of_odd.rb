class SumOfOddNumbers
	def initialize
		# odd_numbers
	end

	def odd_numbers(rows)
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