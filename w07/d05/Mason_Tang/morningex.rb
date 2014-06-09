class Card

  attr_accessor :rank, :suit,


  def initialize
    @rank = rank
    @suit = suit
  end



  def to_s
    return "#{rank} of #{suit}"
  end


end


Class Deck

  attr_accessor :deck,

  def initialize
    @deck = [2...10]
  end




end
