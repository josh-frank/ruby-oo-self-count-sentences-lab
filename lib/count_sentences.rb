require 'pry'

class String

  def sentence?
    self.end_with?( "." )
  end

  def question?
    self.end_with?( "?" )
  end

  def exclamation?
    self.end_with?( "!" )
  end

  def count_sentences
    resultRegex = Regexp.union( ".", "!", "?" )
    resultArray = self.squeeze.split( resultRegex )
    resultArray.reject { |s| s.empty? }
    resultArray.length
  end
end

test = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
puts test.count_sentences