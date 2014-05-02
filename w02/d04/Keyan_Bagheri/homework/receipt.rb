class Receipt

	attr_accessor :company, :product

	def initialize(company)
		@company = company
		@product = {}
	end

	def sale
		puts "Name of service/product?"
		item = gets.chomp
		puts "Price?"
		price = gets.chomp.to_f
		@product[item] = price
	end

	def to_s
		string = ""
		total_cost = 0.0

		@product.each do |unit,cost|
			string += "Item: #{unit}; Price: $#{cost}\n"
			total_cost += cost
		end

"- Company Name: #{@company}
- Goods/Services Provided:
#{string}
- Total: $#{total_cost}

- Thank you for your business\n"
	end

end

joe = Receipt.new("Joe's Radioshack")
joe.sale
joe.sale
joe.sale
print joe