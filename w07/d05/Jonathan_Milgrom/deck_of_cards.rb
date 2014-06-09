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
	end

	def fill
		suits = ["Spades", "Diamonds", "Clubs", "Hearts"]
		rank = [2,3,4,5,6,7,8,9,10,"Jack", "Queen", "King", "Ace"]
		suits.each do |suit|
			array = []
			rank.each do |rank|
				array << Card.new(rank, suit)
			end
			@cards << array
		end
	end

	def to_s
		self.cards.each do |suit|
			suit.each do |card|
				card.to_s
			end
		end
	end

	def shuffle
		
		self.cards.each do |suit|
			suit.shuffle!
		end
	end

	def organize
		self.cards.each do |suit|
			suit.sort
		end
	end

end

