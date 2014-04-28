class Atm
	attr_accessor :balance, :funds

	def initialize
		@balance = balance.to_f#to float
		@funds = 0
		$client = {}
	end

	def deposit(funds)
		@funds = funds.to_f #is this necessary if parameter is set in line 10 and it is changed to a float in ln13?
		@balance = $client.balance + @funds
	end

	def withdraw(funds)
		@funds = funds.to_f
		@balance = $client.balance - @funds
	end

	def to_s
		"#{$client.name}'s new balance is: $#{$client.balance}."
	end

end

#try making the morning exercie work without the funds
#think out the global variable and why you don't need a client parameter in the method