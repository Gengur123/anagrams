require('rspec')
require('anagram')
require('pry')

describe("wordconsistency") do
  test = Anagram.new("S h A c O", "Chaos")
  test.wordconsistency()
  it("will take 2 words and then remove spaces, downcases them make and array then sort them.") do
    expect(test.inputword1()).to((eq("achos")))
    expect(test.inputword2()).to((eq("achos")))
  end
end

describe("is_anagram") do
  test = Anagram.new("shaco", "chaos")
  test.wordconsistency()
  it ("will compare the 2 words and give a true becuase Shaco and Chaos are anagrams") do
    expect(test.is_anagram()).to((eq(true)))
  end
end

describe("is_word") do
  test = Anagram.new("pkom", "mkp")
  it ("will return false due to these strings not having a vowel") do
    expect(test.is_word()).to((eq(false)))
  end
end

describe("is_antigram") do
  test1 = Anagram.new("hi", "bye")
  test2 = Anagram.new("hiib", "bsii")
  it ("will return they are antigrams due to sharing no letters") do
    expect(test1.is_antigram()).to((eq("These are antigrams and share no letters")))
  end
  it ("will return these words share some letters: s") do
    expect(test2.is_antigram()).to((eq("These words share some letters: bi")))
  end
end