require 'pry'

class String

  def sentence?
    self.chars.last == '.' ? true : false
    # self.end_with?('.') ? true : false
  end
  # "The weather outside is frightful.".sentence?
  # # true
  # "But the fire is so delightful".sentence?
  # # false
  #================================================================

  def question?
    self.end_with?('?') ? true : false
  end
  # "The weather outside is frightful?".question?
  # # true
  # "But the fire is so delightful.".question?
  # # false
  #================================================================

  def exclamation?
    self.include?('!') ? true : false
  end
  # "The weather outside is frightful?".exclamation?
  # # true
  # "But the fire is so delightful!".exclamation?
  # # false
  #================================================================

  def count_sentences
    self.split(/\.|\!|\?/).find_all {|sentence| !sentence.empty?}.length
  end
  #================================================================
  "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
end