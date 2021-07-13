class NumberTranslation
  def initialize(number)
    @number = number
  end

  def nums_to_words()
    youth_dictionary = Hash.new()
    youth_dictionary = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => "zero", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    youth_dictionary.fetch(@number)
  end
end



# numberArray = [1, 0, 1, 2]
# scales numberarray.length
# base numbers
# tens twenty thiry
# scales hundred thousand

# scales: hundred, thousand

# tens_dictionary = Hash.new()
# tens_dictionary.store(10 => "ten", 20 => "twenty")


