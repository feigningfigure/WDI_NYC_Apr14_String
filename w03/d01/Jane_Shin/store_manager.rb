require 'pg'
require 'pry'

@conn = PG.connect(dbname: 'amazone_db')

def add_product(name, price, description)
	@conn.exec("INSERT INTO products (name, price, description, quantity) VALUES ('#{name}', '#{price}', '#{description}', 0);")
	puts "You created '#{name}' id, '#{description}', that costs $'#{price}'."
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

def update(id, name, description, price)
	if name != ""
	@conn.exec("UPDATE products SET name = '#{name}' WHERE id = '#{id}';")
	end
	if description != ""
	@conn.exec("UPDATE products SET description = '#{description}' WHERE id = '#{id}';")
	end
	if price != ""
	@conn.exec("UPDATE products SET price = price WHERE id = '#{id}';")
	end
	@conn.exec("SELECT * FROM products WHERE id = #{id};")
	# puts "You updated #{update.values_at('name')} (##{update[0]['id']}), #{update[0]['description']}, that costs $#{update[0]['price']}."
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
# puts "What is your product called?"
# 	name = gets.chomp
# puts "How much does it cost?"
# 	price = gets.chomp.to_f
# puts "Provide a short description of the product."
# 	description = gets.chomp
# add_product(name, price, description)

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

#UPDATE
puts "What is the id of the product you'd like to update?"
	id = gets.chomp.to_i
@conn.exec("SELECT name FROM products WHERE id = '#{id}';")
	name_v = result.values_at('name')
	puts name_v
# puts "What is the new name of #{product[0]['name']}?"
# 	name = gets.chomp
# puts "What is the new description of #{product[0]['description']}?"
# 	description = gets.chomp
# puts "What is the new price of #{product[0]['price']}?"
# 	price = gets.chomp.to_f
# update(id, name, description, price)

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