require('rspec')
require('num_words')


describe('#nums_to_words') do
  it("returns 'one' when 1 is entered") do
    number = NumberTranslation.new(1)
    expect(number.nums_to_words).to(eq("one"))
  end

  it("returns 'nine' when 9 is entered") do
    number = NumberTranslation.new(9)
    expect(number.nums_to_words).to(eq("nine"))
  end

  it("returns a teenage number when entered") do
    number = NumberTranslation.new(19)
    expect(number.nums_to_words).to(eq("nineteen"))
  end
  it("returns a multiple of ten as text when entered") do
    number = NumberTranslation.new(30)
    expect(number.nums_to_words).to(eq("thirty"))
  end
  it("returns a number less than 100 as text") do
    number = NumberTranslation.new(61)
    expect(number.nums_to_words).to(eq("sixty one"))
  end

end