def Receipt

	attr_accessor :company, :product, :total_cost

	def initialize
		@company = company
		@product = {}
		@total_cost = nil
	end

	def sale
		puts "Name of service/product?"
		item = gets.chomp
		puts "Price?"
		price = gets.chomp.to_f
		@product[item] = price
	end

	def to_s
		<<-RCPT

		- Company Name: #{@company}
		- Goods/Services Provided: {@product.each |product,price| puts "Item: #{product}; Price: $#{price}"}
		- Total: $#{@total_cost}
		
		- Thank you for your business
		RCPT
	end

end

j = Receipt.new
j.sale
