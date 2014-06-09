require 'pry'
require 'ap'

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
    @cards = []
    @suit = ["Spades", "Hearts", "Clubs", "Diamonds"]
    @rank = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"].to_s
      suit.each do |suit|
      rank.each do |rank|
      @cards = Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @shuffled_deck = []
    @shuffled_deck << @cards.sample
  end

  def choose_card
    puts "Pick a card, any card from (1-52)!"
    @selection = gets.chomp.to_i
    puts "You picked the #{@shuffled_deck[selection]}"
  end
end

cards.choose_card
