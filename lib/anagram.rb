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
    self.inputword1 = self.inputword1.split("").sort.join
    self.inputword2 = self.inputword2.split("").sort.join
  end

  def is_anagram()
    if self.inputword1 === self.inputword2
      return true
    else
      return false
    end
  end

  def is_word()
    check1 = self.inputword1.match(/[aeiou]/)
    check2 = self.inputword2.match(/[aeiou]/)
    if (check1 === nil) || (check2 === nil) 
      return false
    else 
      return true
    end
  end

  def is_antigram()
    self.inputword1 = self.inputword1.split("").sort
    self.inputword2 = self.inputword2.split("").sort
    intersect = self.inputword1.&(self.inputword2)
    if intersect === []
      return result = "These are antigrams and share no letters"
    else
      return result = "These words share some letters: #{intersect.join}"
    end
  end
end 