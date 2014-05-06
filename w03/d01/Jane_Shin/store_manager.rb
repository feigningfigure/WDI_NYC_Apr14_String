require 'pg'
require 'pry'

@conn = PG.connect(dbname: 'amazone_db')

def add_product(name, price, description)
	@conn.exec("INSERT INTO products (name, price, description, quantity) VALUES ('#{name}', '#{price}', '#{description}', 0);")
	new = @conn.exec("SELECT id FROM products WHERE name = '#{name}';")
		new.each do |item|
			item.each do |k, v|
				id = v
				puts "You created #{name} (##{id}), #{description}, that costs $#{price}."
			end
		end
end

def search_id(id)
	result = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
	result.each do |name|
		name.each do |k, v|
		puts "#{k}: #{v}"
		end
	end
end

def search_name(name)
	result = @conn.exec("SELECT * FROM products WHERE name = '#{name}';")
	result.each do |name|
		name.each do |k, v|
		puts "#{k}: #{v}"
		end
	end
end

def update(id, name, description, price=nil)
	if name != ""
	@conn.exec("UPDATE products SET name = '#{name}' WHERE id = '#{id}';")
	end
	if description != ""
	@conn.exec("UPDATE products SET description = '#{description}' WHERE id = '#{id}';")
	end
	if price != 0
	@conn.exec("UPDATE products SET price = '#{price}' WHERE id = '#{id}';")
	end

	name_v = @conn.exec("SELECT name FROM products WHERE id = '#{id}';")
		name_v.each do |item|
			item.each do |k, v|
				name = v
			end
		end
	description_v = @conn.exec("SELECT description FROM products WHERE id = '#{id}';")
		description_v.each do |item|
			item.each do |k, v|
				description = v
			end
		end
	price_v = @conn.exec("SELECT price FROM products WHERE id = '#{id}';")
		price_v.each do |item|
			item.each do |k, v|
				price = v
			end
		end
	puts "You updated #{name} (##{id}), #{description}, that costs $#{price}."
end

def delete(id)
	product = @conn.exec("DELETE FROM products WHERE id = '#{id}';")
end

def display_products
	all_products = @conn.exec("SELECT * FROM products;")
	all_products.each do |name|
		name.each do |k, v|
			puts "#{k}: #{v}"
		end
	end
end

def order(id, order)
	current_info = @conn.exec("SELECT quantity FROM products WHERE id = '#{id}';")
	current_qty = current_info[0]['quantity'].to_i
	total_qty = current_qty + order.to_i
	ordered_info = @conn.exec("UPDATE products SET quantity = '#{total_qty}' WHERE id = '#{id}';")
	puts "#{ordered_info[0]['quantity']}"
end

#CREATE
puts "What is your product called?"
	name = gets.chomp
puts "How much does it cost?"
	price = gets.chomp.to_f
puts "Provide a short description of the product."
	description = gets.chomp
add_product(name, price, description)

#SEARCH
# puts "Do you wish to search by 'ID' or 'Name'?"
# 	input = gets.chomp.downcase
# 	if input == "id"
# 		puts "What is the id number?"
# 		id = gets.chomp.to_i
# 		search_id(id)
# 	else input == "name"
# 		puts "What is the name of the product?"
# 		name = gets.chomp
# 		search_name(name)
# 	end

#UPDATE - DONE
# puts "What is the id of the product you'd like to update?"
# 	id = gets.chomp.to_i
# 	name_v = @conn.exec("SELECT name FROM products WHERE id = '#{id}';")
# 	name_v.each do |item|
# 		item.each do |k, v|
# 			current_name = v
# 	puts "What is the new name of #{current_name}?"
# 		name = gets.chomp
# 	if name == ""
# 		puts "What is the new description of #{current_name}?"
# 	else
# 		puts "What is the new description of #{name}?"
# 	end
# 		description = gets.chomp
# 	if name == ""
# 		puts "What is the new price of #{current_name}?"
# 	else
# 		puts "What is the new price of #{name}?"
# 	end
# 		price = gets.chomp.to_f
# 	update(id, name, description, price)
# 		end
# 	end		


#ORDER
# puts "What is the id of the product you'd like to order?"
# 	id = gets.chomp.to_i
# prod_info = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
# puts "You have #{product[0]['quantity']} #{product[0]['name']}(s). How many would you like to order?"
# 	order = gets.chomp.to_i


#DELETE
# puts "What is the id of the product you'd like to delete?"
# 	id = gets.chomp.to_i
# prod_info = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
# prod_name = "prod_info[0]['name']"
# puts "Do you really want to delete #{product[0]['name']}?"
# 	if input == "yes"
# 		delete(id)
# 		puts "You've deleted #{prod_name}"
# 	end
#inventory = loop thru array, getlength, add/subtract lengths