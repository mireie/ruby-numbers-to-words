require ('pry')

class NumberTranslation
  def initialize(number)
    @number = number
  end

  def nums_to_words()
    number_array = @number.to_s.split("").map! {|item| item.to_i}
    three_array(number_array)
  end

  def three_array(number_array)
    output_array = []
    youth_dictionary = Hash.new()
    youth_dictionary = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => "zero" , 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    elder_dictionary = Hash.new()
    elder_dictionary = {20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    scale_dictionary = {3 => "hundred"}
    youth_check = number_array[number_array.length-2]*10 + number_array[number_array.length-1]
    # for checking 100s
    if number_array.length === 3
      output_array.push(youth_dictionary.fetch(number_array[0]))
      output_array.push(scale_dictionary.fetch(number_array.length))
    end
    # for numbers 1-19
    if youth_dictionary.include?(@number)
      return youth_dictionary.fetch(@number)
    # for multiples of 10 for 20-90
    elsif elder_dictionary.include?(@number)
      return elder_dictionary.fetch(@number)
    end
    # for checking ones digit to be 0 and tens digit to be 0
    if number_array[number_array.length-1] === 0 && number_array[number_array.length-2] === 0 
      return output_array.join(" ")
    end
    # for checking tens digit to be not 0
    if number_array[number_array.length-2] != 0 && number_array[number_array.length-2] !=1
        output_array.push(elder_dictionary.fetch(number_array[number_array.length-2]*10))
    end
    # for checking the ones digit to be not 0
    if youth_check < 20 && youth_check > 9
      output_array.push(youth_dictionary.fetch(youth_check))
    elsif number_array[number_array.length-1] != 0
      output_array.push(youth_dictionary.fetch(number_array[number_array.length-1])) 
    end
    return output_array.join(" ")
  end
end

def nums_test(max)
  x = 0
  fail_counter = 0
  max.times() do
    y = NumberTranslation.new(x)
    if y.nums_to_words().kind_of?(String) === false
      fail_counter += 1
    end
    x += 1
  end
  return "Fails: #{fail_counter}"
end
