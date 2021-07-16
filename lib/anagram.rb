class Anagram
  def initialize(inputword1,inputword2)
    @inputword1 = inputword1
    @inputword2 = inputword2
  end

  def anagram?
    word1 = @inputword1.split("").sort.join
    word2 = @inputword2.split("").sort.join
  end

end