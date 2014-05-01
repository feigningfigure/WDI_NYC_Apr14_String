class Client
	attr_accessor :name, :balance

def initialize (name,balance)
	@name = name
	@balance = balance.to_f
	@to_s
end

def to_s
	puts "Welcome #{@name}. Your current balance is $#{@balance}"
end

end