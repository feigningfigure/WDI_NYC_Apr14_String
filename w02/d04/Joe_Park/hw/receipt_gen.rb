class Receipt

	attr_accessor :name, :price


	def initialize(name, price)
		@name = name
		@price = price
		@receipt = {}
	end

	def to_s
		puts "Company Name: Particular Assembly Inc.\nGood/Services Provided: #{@name}\nCost: $#{price}\nThank you for your patronage"
	end


	def add_to_receipt(item, cost)
		@receipt[item] = cost
	end

end


puts "Enter Commodity: "
item = gets.chomp.downcase

puts "Enter Price: "
price = gets.chomp.to_i

particular_assembly_inc = Receipt.new(item, price)
particular_assembly_inc.to_s

# puts "Did you purchase anything else? (y)es or (n)o"
# answer = gets.chomp.downcase

# if answer == y
# 	particular_assembly_inc.add_to_receipt(item, price)
# 	particular_assembly_inc.to_s
# elsif answer == n
# 	"Thank you for your business"
# else 
# 	"Error!"
# end

# particular_assembly_inc.add_to_receipt(item, price)
# particular_assembly_inc.to_s


# particular_assembly_inc.add_to_receipt("car", 40000)
# particular_assembly_inc.to_s

# particular_assembly_inc.add_to_receipt("bike", 77777)
# particular_assembly_inc.to_s





