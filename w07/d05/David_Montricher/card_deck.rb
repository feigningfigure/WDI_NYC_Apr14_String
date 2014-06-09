class Card
  RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  SUITS = %w(Spade Heart Club Diamond)

  attr_accessor :rank, :suit

  def initialize(id)
    self.rank = RANKS[id % 13]
    self.suit = SUITS[id % 4]
  end
end

class Deck
  attr_accessor :cards
  def initialize
    # shuffle array and init each Card
    self.cards = (0..51).to_a.shuffle.collect { |id| Card.new(id) }
  end
end

# people with Ruby 1.9 (or 1.8.7 with backports) can safely ignore this duck punch
class Array
  # knuth-fisher-yates shuffle algorithm
  def shuffle!
    n = length
    for i in 0...n
      r = rand(n-i)+i
      self[r], self[i] = self[i], self[r]
    end
    self
  end
  def shuffle
    dup.shuffle!
  end
end
