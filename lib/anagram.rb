class Anagram
  attr_accessor(:inputword1, :inputword2, :sentence)

  def initialize(inputword1, inputword2)
    @inputword1 = inputword1
    @inputword2 = inputword2
    @sentence = sentence
  end

  def wordconsistency()
    self.inputword1 = self.inputword1.gsub(/\s+/, "").downcase()
    self.inputword2 = self.inputword2.gsub(/\s+/, "").downcase()
  end
end 