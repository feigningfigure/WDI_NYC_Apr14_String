class Client
	attr_accessor :name, :balance

	def initialize(name, balance)
		@name = name
		@balance = balance
	end

	def to_s
		"Welcome #{@name}. Your balance is $#{@balance}."
	end


end






# **- Client Object**
# 	- Name your file `client.rb`
# 	- Client should have a name
# 	- Client should have a $ balance
# 	- Client should have a to_s method, along the lines of: 
# 	  "Welcome so-and-so. Your balance is such-and-such."

