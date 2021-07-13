require ('pry')

class NumberTranslation
  def initialize(number)
    @number = number
  end
  # [1, 0, 0, 0] has to become [[1], [0, 0, 0]]
  # thousands_array = [[number_array[0]], num
  # pop multiples of 3 into arrays for length /3 times

  def nums_to_words() 
    number_array = @number.to_s.split("").map! {|item| item.to_i}
    if number_array.length === 4
      thousands_array = [number_array[0]]
      return three_array(thousands_array) + " thousand"
    end
    three_array(number_array)
  end

  def three_array(number_array)
    case number_array.length
    when 3
      three_array_value = number_array[0]*100 + number_array[1]*10 + number_array[2]
    when 2
      three_array_value = number_array[0]*10 + number_array[1]
    when 1
      three_array_value = number_array[0]
    else
      return "wtf?"
    end
    output_array = []
    youth_dictionary = Hash.new()
    youth_dictionary = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => "zero" , 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    elder_dictionary = Hash.new()
    elder_dictionary = {20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    scale_dictionary = {3 => "hundred"}
    youth_check = number_array[number_array.length-2]*10 + number_array[number_array.length-1]
    if number_array.length === 3
      output_array.push(youth_dictionary.fetch(number_array[0]))
      output_array.push(scale_dictionary.fetch(number_array.length))
    end
    if youth_dictionary.include?(three_array_value) 
      return youth_dictionary.fetch(three_array_value)
    elsif elder_dictionary.include?(three_array_value)
      return elder_dictionary.fetch(three_array_value)
    end
    if number_array[number_array.length-1] === 0 && number_array[number_array.length-2] === 0 
      return output_array.join(" ")
    end
    if number_array[number_array.length-2] != 0 && number_array[number_array.length-2] !=1
        output_array.push(elder_dictionary.fetch(number_array[number_array.length-2]*10))
    end
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