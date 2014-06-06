class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    puts "#{rank} of #{suit}"
  end
end

class Deck
  def initialize
    @deck = []
    ranks = %w{Ace 2 3 4 5 6 7 8 9 10 Jack Queen King}
    suits = %w{♠ ♡ ♦ ♣}
    suits.each do |suit|
      ranks.each do |rank|
        @deck << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @deck.shuffle!
  end

  def choose_card
    @deck.sample
  end
end
