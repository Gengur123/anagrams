require('rspec')
require('anagram')
require('pry')

describe("wordconsistency") do
  test = Anagram.new("ShAcO", "Chaos")
  test.wordconsistency()
  it("will take 2 words to compare by first making them all lower case then sort") do
    expect(test.inputword1()).to((eq("achos")))
    expect(test.inputword2()).to((eq("achos")))
  end
  test2 = Anagram.new("T E a", "E a T")
  test2.wordconsistency()
  it("will take 2 words to compare, these words have weird spacing and the program should take care of it.") do
    expect(test2.inputword1()).to((eq("aet")))
    expect(test2.inputword2()).to((eq("aet")))
  end
end

describe("is_anagram") do
  test = Anagram.new("Shaco", "chaos")
  test.wordconsistency()
  it ("will compare the 2 words and give a true becuase Shaco and Chaos are anagrams") do
    expect(test.is_anagram()).to((eq(true)))
  end
  test2 = Anagram.new("The Morse Code", "Here come dots")
  test2.wordconsistency()
  it("will compare 2 sentences and determin if its a true anagram or not") do
    expect(test2.is_anagram()).to((eq(true)))
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