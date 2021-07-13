class NumberTranslation
  def initialize(number)
    @number = number
  end

  def nums_to_words()
    ones_dictionary = Hash.new()
    ones_dictionary = {1 => "one"}
    ones_dictionary.fetch(@number)
  end
end

# base numbers
# tens twenty thiry
# scales hundred thousand

# scales: hundred, thousand

# tens_dictionary = Hash.new()
# tens_dictionary.store(10 => "ten", 20 => "twenty")