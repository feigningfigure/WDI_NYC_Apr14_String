require_relative 'atm'

class Client

	attr_accessor :name, :balance

	def initialize (name = nil, balance = nil)
		@name = name
		@balance = balance.to_f
	end

	#how to avoid creating a new method?
	def balance
		$balance
	end

	def to_s
		"Welcome #{@name}. Your balance is #{balance}"
	end
end



