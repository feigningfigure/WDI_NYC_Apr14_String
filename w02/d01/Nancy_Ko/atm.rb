# cannot have ATM as capitalized because all CAPS is a constant
class Atm

attr_reader :balance #:client
attr_accessor :deposit, :withdrawal, :amount

def initialize(balance)
	@balance = balance.to_f
	amount = 0
end

def 
# what goes next to the def is what is being passed or parameter. 
	def deposit
		@amount = amount.to_f
		@balance = $client.balance + @amount	
	end

	def withdrawal
		@amount = amount.to_f
		@balance = $client.balance - @amount
	end

	def to_s
		# we are calling the client.name and client.balance object from a file that hasn't been created yet (the transaction machine file)
		puts "{$client.name}\'s new balance is $#{client.balance}"
	end



end