#morning exercise - Atm 1960's style

class Client
	attr_accessor :name, :balance

	def initialize #(name, balance)if we were adding new accounts we would need these parameters
		@name = client_name
		@balance = balance.float
	end

	def to_s
		"Welcome #{@name}. Your balance is $#{@balance}."
	end

end