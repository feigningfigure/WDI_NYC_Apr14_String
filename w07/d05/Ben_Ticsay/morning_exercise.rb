class Card

  attr_accessor :rank, :suit

  def intialize (rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

end


class Deck

  attr_accessor :cards

  def intialize
    @cards = []
    @rank = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
    @suit = ["Spade", "Heart", "Club", "Diamond"]

    ranks.each do |rank|
      suit.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def choose_card
    @cards[rand(1..52)]
  end

  def shuffle
    @cards.shuffle!
  end

end

new_deck = Deck.new
new_deck.shuffle
new_deck.choose_card
