require 'pry'

class Card
  attr_accessor :rank, :suit

  def initialize (rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    puts "#{@rank} of #{@suit}"
  end

end

suit_list = ["Heart", "Spade", "Diamond", "Club"]
rank_list = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]

13.times do
  rank = rank_list.sample
  suit = suit_list.sample
  cards = Card.new(rank,suit)
  cards.to_s
end

class Deck

# 52 cards, 4 suits , 13 each
attr_accessor :cards

def initialize

end

def shuffle

end

end




suit_list = ["Heart", "Spade", "Diamond", "Club"]
rank_list = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]

suit_list.each do |suit|
  rank_list.each do |rank|
    rank = rank
  end
  suit = suit
end



