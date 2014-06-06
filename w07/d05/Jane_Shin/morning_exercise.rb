

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

	def initialize
		@pile = []
		suits = ["Spade", "Heart", "Club", "Diamond"]
		ranks = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack"]

		ranks.each do |rank|
			suits.each do |suit|
				@pile << Card.new(suit, rank)
			end
		end
	end



	def shuffle
		puts @pile.shuffle
	end

	def random_card
		puts @pile.sample
	end

end


my_deck = Deck.new
# my_deck.shuffle
my_deck.random_card