require('rspec')
require('anagram')
require('pry')

describe ("wordconsistency") do
  test = Anagram.new("S h A c O", "Chaos")
  test.wordconsistency()
  it("will take 2 words and then remove spaces, downcases them make and array then sort them.") do
    expect(test.inputword1()).to((eq("achos")))
    expect(test.inputword2()).to((eq("achos")))
  end
end
