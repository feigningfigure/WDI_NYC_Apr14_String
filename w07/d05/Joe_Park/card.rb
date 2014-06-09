$card_rank_array = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
$card_suit_array = ["Spades", "Hearts", "Diamonds", "Clubs"]


class Card

  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    p "#{@rank} of #{@suit}"
  end

end


class Deck

  attr_accessor :fresh_deck

  def initialize
    @fresh_deck = []
    $card_rank_array.each do |rank|
      $card_suit_array.each do |suit|
        @fresh_deck << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @fresh_deck.shuffle!
  end

  def choose_card
    p @fresh_deck.sample
  end

end



rank = $card_rank_array.sample
suit = $card_suit_array.sample

my_card = Card.new(rank, suit)
# my_card.to_s

my_deck = Deck.new
my_deck.shuffle
my_deck.choose_card

