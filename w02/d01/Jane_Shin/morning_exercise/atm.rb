class Atm
	attr_accessor :balance, :client

	def initialize
		@balance = balance.float
		@client = {}
	end

	def deposit(funds)
		@balance = balance.to_i + funds.to_i
	end

	def withdraw(funds)
		@balance = balance.to_i - funds.to_i
	end

end