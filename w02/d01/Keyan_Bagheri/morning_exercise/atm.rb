class Atm
	attr_accessor :balance, :amount, :client_name

	def log_in_client(client_name)
		@user = client_name
		@balance = client_name.balance
		@client_name = client_name.name
		@amount = 0
	end

	def deposit(amount)
		@amount = amount.to_f
		@balance += @amount
		self.to_s(client_name)
	end

	def withdraw(amount)
		@amount = amount.to_f
		@balance -= @amount
		self.to_s(client_name)
	end

	def to_s(client_name)
		puts "#{@user.name}'s new balance is: $#{@balance}"
	end

end