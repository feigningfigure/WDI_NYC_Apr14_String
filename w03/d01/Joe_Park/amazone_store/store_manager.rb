require 'pg'
require 'Rainbow'

@conn = PG.connect(dbname: 'products_db')

# INSERT INTO products (product_name, price, description) VALUES();

def create
	puts Rainbow("What is your product called?").yellow
	name = gets.chomp.downcase

	puts Rainbow("What is its price?").yellow
	price = gets.chomp

	puts Rainbow("What is the description of your product?").yellow
	description = gets.chomp

	quantity = 0

	@conn.exec("INSERT INTO products (name, price, description, quantity) VALUES('#{name}', '#{price}', '#{description}', '#{quantity}');")

	puts "You created #{name} , #{description}, that costs $#{price}"

	program_start

end


# SELECT * FROM products WHERE category = 'query_term';
def search
	puts Rainbow("Do you wish to search by 'id' or 'name'?").yellow
	category = gets.chomp
	
	if category == "id" || category == "name"

		puts Rainbow("What is the id/name of your product?").yellow
		query_term = gets.chomp

		result = @conn.exec("SELECT * FROM products WHERE #{category} = '#{query_term}';")

		puts Rainbow("Here are all the products that matched your search!: ").yellow
		result.each do |product| 
			product.each do |k, v| 
				puts "#{k}: #{v}"
			end
		end
	else
		puts Rainbow("That Option does not exist!").red
	end
	program_start

end

# UPDATE products SET name = '' WHERE id = '';
def update
	puts Rainbow("What is the id of the product you wish to edit?").yellow
	product_id = gets.chomp
	result = @conn.exec("SELECT * FROM products WHERE id = '#{product_id}';")[0]
	item = result["name"]

	puts Rainbow("What is '#{item}''s new name?").yellow
	query_term = gets.chomp

	@conn.exec("UPDATE products SET name = '#{query_term}' WHERE id = '#{product_id}';")

	puts Rainbow("What is '#{query_term}''s new description?").yellow
	new_description = gets.chomp
	if new_description != nil
		@conn.exec("UPDATE products SET description = '#{new_description}' WHERE id = '#{product_id}';")
	else
		puts Rainbow("No update recorded for description!").red
	end

	puts Rainbow("What is '#{query_term}''s new price?").yellow
	new_price = gets.chomp
	if new_price != nil 
		@conn.exec("UPDATE products SET price = '#{new_price}' WHERE id = '#{product_id}';")
	else
		puts Rainbow("No update recorded for price!").red
	end

	result2 = @conn.exec("SELECT * FROM products WHERE id = '#{product_id}';")[0]

	puts "You updated #{item} to #{result2["name"]} (#{result2["id"]}), #{result2["description"]}, that costs #{result2["price"]}"
	program_start

end

def order
	puts Rainbow("What is the id of the product you wish to order?").yellow
	order_id = gets.chomp
	result = @conn.exec("SELECT * FROM products WHERE id = '#{order_id}';")[0]
	puts Rainbow("You have #{result["quantity"]} #{result["name"]}. How many do you wish to order?").yellow
	user_order = gets.chomp.to_i
	unless user_order < 0
	new_total = user_order + result["quantity"].to_i
	@conn.exec("UPDATE products SET quantity = '#{new_total}' WHERE id = '#{order_id}';")
	puts "#{new_total} of #{result["name"]} has been ordered!"
	else
		puts Rainbow("No order has been placed").red
	end
	program_start
end

def ship
	puts "What is the id of the product you wish to ship?"
	shipment_id = gets.chomp
	result = @conn.exec("SELECT * FROM products WHERE id = '#{shipment_id}';")[0]
	puts "You have #{result["quantity"]} #{result["name"]}. How many are you shipping?"
	user_shipment = gets.chomp
	unless result["quantity"].to_i < user_shipment.to_i
	new_total = result["quantity"].to_i - user_shipment.to_i
	@conn.exec("UPDATE products SET quantity = '#{new_total}' WHERE id = '#{shipment_id}';")
	puts "#{new_total} of #{result["name"]} has been ordered!"
	else
		puts Rainbow("No shipment has been placed").red
	end
	program_start
end

def delete
	puts Rainbow("What is the id of the product you wish to delete?").yellow
	id = gets.chomp
	@conn.exec("DELETE FROM products WHERE id = '#{id}';")
	puts "Item has been deleted"
end

def program_start
	puts Rainbow("Welcome to Store Manager v1.0").cyan
	puts Rainbow("What would you like to do? Create, Search, Update, Order, Ship, Delete, Quit").cyan
	choice = gets.chomp.downcase
	case choice
	when "create"
		create
	when "search"
		search
	when "update"
		update
	when "order"
		order
	when "ship"
		ship
	when "delete"
		delete
	when "quit"
		Kernel.exit
	else 
		"I do not know how to do that.  Please try again!"
		program_start
	end
	program_start
end

program_start

# result.each do |product|
# 	@item = product["name"]	
# end



