class Card
	attr_accessor :rank, :suit

	def initialize(rank,suit)
		def @rank = rank
		def @suit = suit
	end
end

class Deck
	attr_acessor :cards
	
	def initialize
		@cards = []
		ranks = ["A",2,3,4,5,6,67,8,9,10,"j","Q","K"]
		suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
		ranks.each do |rank|
			suits.each do |suit|
			@cards << Card.new(rank,suit)
			end
			end
			end


	k
	O
	de
	def shuffle(card)
		card.random
		end
	def chooseCard()
	card.new = card.random
	end
	end

	#pry
	new_deck.shufle
	new_deck.choose_card


