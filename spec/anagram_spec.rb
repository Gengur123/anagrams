require('rspec')
require('anagram')
require('pry')

describe ("wordconsistency") do
  test = Anagram.new("S h A c O", "Chaos")
  test.wordconsistency()
  it("will take 2 words and then remove spaces and downcases them") do
    expect(test.inputword1()).to((eq("shaco")))
    expect(test.inputword2()).to((eq("chaos")))
  end
end
