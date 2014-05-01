require_relative 'client'

class Atm

	attr_accessor :balance

	def initialize (balance = 0)
		@balance = balance.to_f
	end

	def deposit(sum)
		@client.balance + sum
	end

	def withdrawal(sum)
		@client.balance - sum
	end

	def to_s
		"Your new balance is: #{balance}"
	end

end
