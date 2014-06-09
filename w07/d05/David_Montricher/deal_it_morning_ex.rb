class Card

  attr_accessor :rank, :suit

  # arrays containing the sequence of ranks and suits
  def initialize(id)
    @cards = []

    ranks = [Spade, Heart, Diamond, Club]
    suits = [Ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King]

    ranks.each do |rank|
      suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle
  end

  def choose_card
  end

  # print the rank & suit of a card
  def to_s
  end

end



class Deck
  # generate a new deck with 52 cards (13 ranks of each suit)
  def new_deck
  end

  # method should shuffle the entire deck
  def shuffle
  end
end

