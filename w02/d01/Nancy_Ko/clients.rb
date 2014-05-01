require_relative '../atm'
require_relative '../accounts'

class Clients
attr_accessor :name, :balance

	def initialize(name, balance=100)
		@name = name 
		@balance = balance 
	end 

	def client_name 
		 {|k, v| puts "k"}
	end

	def to_s
		puts "Welcome #{name}, your new balance is: $#{balance}"
	end

end