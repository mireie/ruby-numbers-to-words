class NumberTranslation
  def initialize(number)
    @number = number
  end

  def nums_to_words()
    number_array = @number.to_s.split("") 
    youth_dictionary = Hash.new()
    youth_dictionary = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => "zero", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    elder_dictionary = Hash.new()
    elder_dictionary = {20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    if youth_dictionary.include?(@number)
      return youth_dictionary.fetch(@number)
    elsif elder_dictionary.include?(@number)
      return elder_dictionary.fetch(@number)
    else 
      number_array[0] = elder_dictionary.fetch(number_array[0].to_i*10)
      number_array[1] = youth_dictionary.fetch(number_array[1].to_i)
    end 
    number_array.join(" ")
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


