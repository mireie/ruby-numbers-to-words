class NumberTranslation
  def initialize(number)
    @number = number
  end

  def nums_to_words()
    ones_dictionary = Hash.new()
    ones_dictionary = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => "zero"}
    # tens_dictionary = Hash.new()
    # tens_dictionary = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", }
    ones_dictionary.fetch(@number)
  end
end

# base numbers
# tens twenty thiry
# scales hundred thousand

# scales: hundred, thousand

# tens_dictionary = Hash.new()
# tens_dictionary.store(10 => "ten", 20 => "twenty")


