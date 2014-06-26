class Hello < ActiveRecord::Base

  def initialize(phrase)
    @phrase = phrase
  end

  def print_phrase()
    return @phrase
  end

end
