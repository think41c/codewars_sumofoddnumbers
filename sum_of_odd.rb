class SumOfOddNumbers
	def initialize
		# odd_numbers
	end

	def odd_numbers(rows)
		current_number = 1          # Always start with 1, as it's the top of every pyramid. 
		stored_numbers = [1]        # The array that holds all the numbers in the pyramid. It always starts with 1. 
		individual_numbers = 0      # It's 0 b/c we need this to have 

		puts "A #{rows} row pyramid."  # This comes directly from the user input in how many rows to create.

		rows.times do                  # The rows is what's been inputted by the user. If it's "2", then we'll do this block 2 times.
			individual_numbers += rows
			puts individual_numbers
			rows -= 1
		end
		puts "There should be #{individual_numbers} number(s) total in the pyramid."	

		individual_numbers.times do 
			current_number += 2
			stored_numbers << current_number
		end
		puts "The stored numbers are #{stored_numbers}"
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
		odd_numbers(rows_to_sum)
	end

end

a = SumOfOddNumbers.new
a.row_sum_odd_numbers(2)
#  Row sample 
#       1          = 1
#      3 5         = 8 
#     7 9 11       = 27
#   13 15 17 19    = 64
