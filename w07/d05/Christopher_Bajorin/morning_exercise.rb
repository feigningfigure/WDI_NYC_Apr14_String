class Card

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

end

# binding.pry

class Deck

  def initialize
    rank_list = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
    suit_list = ["Hearts", "Spades", "Diamonds", "Clubs"]
    @the_deck = []
    suit_list.each do |suit|
      rank_list.each do |rank|
        @the_deck << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @the_deck.shuffle
  end

  def choose_card
    @the_deck
end
