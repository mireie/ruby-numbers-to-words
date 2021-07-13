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

end



