class Card

attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    puts "#{@rank}, #{@suit}"
  end

end


class Deck

attr_accessor :deck

def initialize

@deck = []

suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
ranks = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]

ranks.each do |rank|
  suits.each do |suit|

  @deck << Card.new(rank, suit)
    end

  end

end

end
