class Card

  attr_accessor :rank, :suit, :value

  def initialize(suit,rank,value)
    @suit = suit
    @rank = rank
    @value = value
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

end

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
  end

def choose_card
  @cards.sample
end

end

def create_deck
  suits = ["spades","diamonds","hearts","clubs"]
  deck = Deck.new
  suits.each do |suit|
    for num in (2..14)
      if num == 14
        rank = "Ace"
      elsif num == 11
        rank = "Jack"
      elsif num == 12
        rank = "Queen"
      elsif num == 13
        rank = "King"
      else
        rank = "#{num}"
      end
      deck.cards << Card.new(suit,rank,num)
    end
  end
  deck
end

def play_high_card_low_card(deck,player1,player2)
  player1_card = deck.choose_card
  player2_card = deck.choose_card
  puts "#{player1} chose the #{player1_card.to_s}."
  puts "#{player2} chose the #{player2_card.to_s}."
  if player1_card.value > player2_card.value
    winner = player1
  elsif player1_card.value < player2_card.value
    winner = player2
  else
    winner = "Nobody"
  end
  puts "#{winner} wins!"
end



new_deck = create_deck
play_high_card_low_card(new_deck,"Keyan","Jonathan")