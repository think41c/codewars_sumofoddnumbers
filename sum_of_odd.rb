class SumOfOddNumbers
	def initialize
		# odd_numbers
	end

	def odd_numbers(rows)
    @rows = rows                # Needed for other methods to see the amount of rows a user input. 
		current_number = 1          # Always start with 1, as it's the top of every pyramid. We use this to stuff into the stored array.
		stored_numbers = [1]        # The array that holds all the numbers in the pyramid. It always starts with 1. 
		individual_numbers = 0      # It's 0 b/c we need this to have 

		puts "A #{rows} row pyramid."  # This comes directly from the user input in how many rows to create.

		# We need a way to establish how many numbers there should be in a pyramid, based on its rows, so we know how many 
		# odd numbers to calcualte. The logic would be: 3 rows is equal to = 1 + 2 + 3...6 individual numbers in a 3 row pyramid.
		# This block does that:
		rows.times do                   # The rows is what's been input by the user. If it's "3", then we'll do this block 3 times.
			individual_numbers += rows  # This starts off establishing the 3 for the rows, then rows is decremented and again...3+2+1.
			rows -= 1
		end

		puts "There should be #{individual_numbers} number(s) total in the pyramid."	

		# So we know we need 6 numbers to fill a 3 row pyramid. And individual_numbers holds that 6 we just calculated.
		# Now we need to calculate each of those 6 numbers in the pyramid, so we have 6 odd numbers total.
		
		# We need 6 odd numbers, but we already gave it the first odd number (1), so we need to only derive 5 additional numbers:
		individual_numbers -= 1
		
		individual_numbers.times do          # We need 6 odd numbers, so we calculate the remaining 5 numbers.
			current_number += 2              # Starting with 1 always, we just add 2 to get an odd number.
			stored_numbers << current_number # Once we have that odd number, we stuff it into our array with numbers of the pyramid.
		end

		puts "The stored numbers are #{stored_numbers}"
		add_row(stored_numbers)
	end

	def add_row(stored_numbers)
	  # The rows of a pyramid are the following numbers in their order. Meaning the first row is always the first number listed. 
	  # The second row is always the 2nd and 3rd number listed. 
	  # The third row is position, 4, 5, 6.
	  # The 4th row is index 7, 8, 9, 10
	  # The 5th row is index 11, 12, 13, 14, 15
	  # Essentially for the 5th row, all the prior numbers for each row are 4+3+2+1 = 10. Therefore, row 5 starts at 10+1 = 11. 
    # Also the 5th row indexes are ->  Stored_numbers - The Rows of the pyramid	+ 1. 
    # ie.                                      15       -             5         + 1 =  11
    # 
    result_row = []   # This is the new array that will contain the numbers we want to add together.
    index_to_count_from = stored_numbers.length-@rows+1    # The length will be one more than the amount of array which starts at 0.
    puts "The index_to_count_from is #{index_to_count_from}"
    puts "The stored number length is #{stored_numbers.length}"
    for i in (index_to_count_from-1..stored_numbers.length-1)
      puts "\n"
      puts "#{i} is the current index"
      p stored_numbers[i]
      result_row << stored_numbers[i]
      puts "\n"
    end
    sum_all_numbers_in_row(result_row)
	end

  def sum_all_numbers_in_row(row_to_add)
    puts "The numbers we want to add together are #{row_to_add}"
    puts row_to_add.inject(:+)
  end

  def sum_all_numbers_in_pyramid
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
a.row_sum_odd_numbers(4)
#  Row sample 
#       1          = 1
#      3 5         = 8 
#     7 9 11       = 27
#   13 15 17 19    = 64
