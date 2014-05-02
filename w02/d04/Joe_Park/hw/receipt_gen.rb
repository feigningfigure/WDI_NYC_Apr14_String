require 'pry'


class Register

	attr_accessor :company


	def initialize(company)
		@company = company
		@receipt = {}
	end

	def to_s
		"		Company Name: #{@company}
		Good/Services Provided: #{@item}
		Cost: $#{@price}
		Thank you for your patronage"

		# "Company Name: #{@company}"
		# "Good/Services Provided: #{@item}"
		# "Cost: $#{@price}"
		# "Thank you for your patronage!"

	end


	def add_to_receipt
		puts "Enter Commodity: "
		@item = gets.chomp.downcase

		puts "Enter Price: "
		@price = gets.chomp.to_i

		@receipt[@item] = @price
	end

	def print_receipt

		add_to_receipt
		puts "Did you purchase anything else? (y)es or (n)o"
		@answer = gets.chomp.downcase

		if @answer == "y" 
			print_receipt
		elsif @answer == "n"
			puts self.to_s
		else
			puts "Error!"
		end

	end

end

Geico = Register.new("Geico")
Geico.print_receipt


# puts "Enter Commodity: "
# item = gets.chomp.downcase

# puts "Enter Price: "
# price = gets.chomp.to_i

# particular_assembly_inc = Receipt.new(item, price)
# particular_assembly_inc.to_s

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





