class MessageFilter
  def initialize(word)
    @word = word
  end
  def detect?(text)
  	return text.include?(@word)
  end

end