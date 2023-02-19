class GrammarStats
  def initialize
    @no_of_texts = 0
    @no_of_correct_texts = 0
  end

  def check(text)
    raise "Wrong data type." if !(text.is_a?(String))
    correct_punctuation = [".", "!", "?"]
    @no_of_texts += 1
    if (text[0] == text[0].upcase && correct_punctuation.include?(text[-1]))
      @no_of_correct_texts += 1
      return true
    else
      return false
    end
  end

  def percentage_good
    return @no_of_correct_texts * 100 / @no_of_texts
  end
end