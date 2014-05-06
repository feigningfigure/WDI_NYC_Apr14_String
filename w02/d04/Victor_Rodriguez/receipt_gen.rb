#Receipt Generator
#Whats the name of the good
#What's the cost

class Receipt

attr_accessor :name, :cost

def initialize (name, cost)
	@name = name
	@cost = cost
end

def to_s
 "Good is #{@name}, and the cost is #{@cost}. Thanks for shopping with us."
end

end

puts "boo"