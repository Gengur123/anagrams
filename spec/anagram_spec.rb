require('rspec')
require('anagram')
require('pry')

describe("Anagram#anagram") do 
  it("will correctly put the words into an array than sort them from cba to abc") do
    inputword1 = Anagram.new('cba','cba')
    expect(word1.anagram?()).to(eq("abc"))
  end
end