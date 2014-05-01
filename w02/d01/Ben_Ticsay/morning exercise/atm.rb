class Atm
	attr_accessor :balance, :amount


	def initialize(balance)
		@balance = balance.to_f
		@amount = 0
	end


	def deposit(amount)
		@amount = amount.to_f
		@balance = $client.balance + @amount
		# client_name.balance -= amount
		# seld.to_s(client_name)
	end

	def withdraw(amount)
		@amount = amount.to_f
		@balance = $client.balance - @amount
		# self.to_s(client_name)
	end

	def to_s
		"#{$client.name} new balance is: #{$client.balance}"
	end

end


# **- ATM Object** 
# 	- Name your file `atm.rb`
# 	- ATM should have a $ balance
# 	- ATM should allow the client to make deposits and withdrawal
# 		- both methods should perform the exchange between the client's account and ATM balance
# 	-  ATM should have a to_s method, along the lines of: "Your new balance is: $something"