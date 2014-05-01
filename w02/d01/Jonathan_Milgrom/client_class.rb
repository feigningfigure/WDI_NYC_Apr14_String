class Client

	#this allows withdrawals and deposits to balance of Client objects
	attr_accessor :name, :balance

	def initialize(name, balance=0)
		@name = name
		@balance = balance
	end

	def to_s 
		puts "Welcome #{name}.  Your balance is #{balance}"
	end
end


