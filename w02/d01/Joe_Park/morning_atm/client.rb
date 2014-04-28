class Client

	attr_accessor :name, :balance

	def initialize
		@name = name
		@balance = balance
	end

	def to_s
		puts "Welcome #{@name}! Your balance is $#{@balance}."
	end

	# def add_balance(user, user_balance)
	# 	@balance[user] = user_balance
	# end



end