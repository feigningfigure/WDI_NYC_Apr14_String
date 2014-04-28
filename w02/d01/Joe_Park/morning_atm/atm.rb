class Atm

	attr_accessor :balance, :amount

	def initialize(balance)
		@balance = balance.to_f
		#float for decimal
		@amount = 0
	end


	def to_s
		puts "#{$client.name}'s new balance is: $#{$client.balance}"
	end

	def deposit(amount)
		@amount = amount.to_f
		@balance = $client.balance + @amount

	end

	def withdraw(amount)
		@amount = amount.to_f
		@balance = $client.balance - @amount
	end

end