class Atm

	attr_accessor :balance, :amount

	def initialize(balance)
		@balance = balance.to_f
		@amount = 0
	end

	def deposit(amount)
		@amount = amount.to_f
		@balance = 
	end

	def withdrawal(name, amount)
		$name.balance -= amount
	end
end

$atm_1 = Atm.new




