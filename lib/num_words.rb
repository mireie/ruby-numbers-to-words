require ('pry')

class NumberTranslation
  def initialize(number)
    @number = number
  end

  def nums_to_words()
    output_array = []
    number_array = @number.to_s.split("").map! {|item| item.to_i}
    youth_dictionary = Hash.new()
    youth_dictionary = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => "zero", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    elder_dictionary = Hash.new()
    elder_dictionary = {20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    scale_dictionary = {3 => "hundred"}
    if number_array.length === 3
      output_array.push(youth_dictionary.fetch(number_array[0]))
      output_array.push(scale_dictionary.fetch(number_array.length))
    end
    if youth_dictionary.include?(@number)
      return youth_dictionary.fetch(@number)
    elsif elder_dictionary.include?(@number)
      return elder_dictionary.fetch(@number)
    else 
      output_array.push(elder_dictionary.fetch(number_array[number_array.length ]*10))
      output_array.push(youth_dictionary.fetch(number_array[1]))
    end 
    return output_array.join(" ")
  end
end

# [2, 0 , 0]


# numberArray = [1, 0, 1, 2]
# scales numberarray.length
# base numbers
# tens twenty thiry
# scales hundred thousand

# scales: hundred, thousand

# tens_dictionary = Hash.new()
# tens_dictionary.store(10 => "ten", 20 => "twenty")

