class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ranks = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
    suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
    ranks.each do |rank|
      suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    deck = @cards.shuffle!
    puts "#{deck}"
  end

  def choose_card
    card = @cards[rand(1..52)]
    puts "#{card}"
  end

end

new_deck = Deck.new
new_deck.shuffle
new_deck.choose_card

# @ranks = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]

# @suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

# cards = []

# @ranks.each do |rank|
#   @suits.each do |suit|
#     cards << Card.new(rank, suit)
#   end
# end
