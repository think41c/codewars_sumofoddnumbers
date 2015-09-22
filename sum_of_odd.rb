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
		add_row(stored_numbers)
	end

	def add_row(stored_numbers)
	  final_sum = 0
		stored_numbers.each do |x|
			final_sum += x
		end
		puts final_sum
	end

	def row_sum_odd_numbers(rows_to_sum)
		odd_numbers(rows_to_sum - 1)
	end

end

a = SumOfOddNumbers.new
a.row_sum_odd_numbers(4)
#  Row sample 
#       1          = 1
#      3 5         = 8 
#     7 9 11       = 27
#   13 15 17 19    = 64
