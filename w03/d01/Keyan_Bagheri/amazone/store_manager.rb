require 'pg'
require 'rainbow'

@conn = PG.connect(dbname: 'products_db')

def search
	puts "Do you wish to search by 'id' or 'name'?"
	input = gets.chomp
	if input.include? 'id'
		puts "What's the product id number?"
		sleep(1.0/2.0)
		all_products = @conn.exec("SELECT * FROM products;")
		all_products.each do |product|
			puts Rainbow("  (#{product['id']})").yellow + " #{product['name']}"
			sleep(1.0/2.0)
		end
		id = gets.chomp
		result = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
	else
		puts "What's the product name?"
		sleep(1.0/2.0)
		all_products = @conn.exec("SELECT * FROM products;")
		all_products.each do |product|
			puts "  (#{product['id']})" + Rainbow(" #{product['name']}").yellow
			sleep(1.0/2.0)
		end
		name = gets.chomp
		result = @conn.exec("SELECT * FROM products WHERE name = '#{name}';")
	end	
	puts
	puts Rainbow("Here are all the products that matched your search:").magenta
	result.each do |product|
		product.each do |k,v|
			puts "#{k}:" + Rainbow(" #{v}").cyan
		end
	end
end


def display
	puts
	all_products = @conn.exec("SELECT * FROM products;")
	all_products.each do |product|
		product.each do |k,v|
			puts "#{k}:" + Rainbow(" #{v}").cyan
		end
		sleep(1)
	end
end

def add
	puts "What is your product called?"
	name = gets.chomp
	puts "What is the description of your product?"
	description = gets.chomp
	puts "What is its price?"
	price = gets.chomp
	@conn.exec("INSERT INTO products (name, price, description) VALUES ('#{name}', #{price}, '#{description}');")
	puts
	puts Rainbow("You created #{name}, #{description}, that costs $#{price}").magenta
end

def update
	puts "What is the id of the product do you wish to edit?"
	sleep(1.0/2.0)
	all_products = @conn.exec("SELECT * FROM products;")
	all_products.each do |product|
		puts Rainbow("  (#{product['id']})").yellow + " #{product['name']}"
		sleep(1.0/2.0)
	end
	id = gets.chomp
	product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
	puts "What is the new name for #{product['name']}?"
	name = gets.chomp
	@conn.exec("UPDATE products SET name = '#{name}' WHERE id = '#{id}';") unless name == ''
	product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
	puts "What is the new description #{product['name']}?"
	description = gets.chomp
	@conn.exec("UPDATE products SET description = '#{description}' WHERE id = '#{id}';") unless description == ''
	product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
	puts "What is the new price of #{product['name']}?"
	price = gets.chomp
	@conn.exec("UPDATE products SET price = '#{price}' WHERE id = '#{id}';") unless price == ''
	product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
	puts
	puts Rainbow("You updated #{product['name']} (#{id}), #{product['description']}, that costs #{product['price']}").magenta
end

def order
	puts "What is the id of the product that you wish to order?"
	sleep(1.0/2.0)
	all_products = @conn.exec("SELECT * FROM products;")
	all_products.each do |product|
		puts Rainbow("  (#{product['id']})").yellow + " #{product['name']}"
		sleep(1.0/2.0)
	end
	id = gets.chomp
	product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
	if (product['quantity'] == nil || product['quantity'].to_i == 0)
		puts "You have no #{product['name']} in stock. How many do you wish to order?"
		order = gets.chomp.to_i
		@conn.exec("UPDATE products SET quantity = '#{order}' WHERE id = '#{id}';")
	else
		puts "You have #{product['quantity']} #{product['name']}. How many do you wish to order?"
		order = gets.chomp.to_i
		@conn.exec("UPDATE products SET quantity = '#{product['quantity'].to_i + order}' WHERE id = '#{id}';")
	end
	product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
	puts
	puts Rainbow("You have added #{order} #{product['name']} and now have #{product['quantity']} #{product['name']}s left.").magenta
end

def ship
	puts "What is the id of the product that you wish to sell?"
	sleep(1.0/2.0)
	all_products = @conn.exec("SELECT * FROM products;")
	all_products.each do |product|
		puts Rainbow("  (#{product['id']})").yellow + " #{product['name']}"
		sleep(1.0/2.0)
	end
	id = gets.chomp
	product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
	if (product['quantity'] == nil || product['quantity'].to_i == 0)
		puts
		puts Rainbow("You have no #{product['name']} in stock. Would you like to order some? (y/n)").red
		input = gets.chomp
		if input == "y"
			order
		else
			return
		end
	else
		puts "You have #{product['quantity']} #{product['name']}. How many do you wish to ship?"
		shipment = gets.chomp.to_i
		if product['quantity'].to_i > shipment
			@conn.exec("UPDATE products SET quantity = '#{product['quantity'].to_i - shipment}' WHERE id = '#{id}';")
			product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
			puts
			puts Rainbow("You have sold #{shipment} #{product['name']}s and now have #{product['quantity']} #{product['name']}s left.").magenta
		else
			@conn.exec("UPDATE products SET quantity = '0' WHERE id = '#{id}';")
			puts
			puts Rainbow("You have sold #{product['quantity']} #{product['name']} and now have sold out of #{product['name']}.").magenta
		end
	end
end

def remove
	puts "What is the id of the product that you wish to delete?"
	sleep(1.0/2.0)
	all_products = @conn.exec("SELECT * FROM products;")
	all_products.each do |product|
		puts Rainbow("  (#{product['id']})").yellow + " #{product['name']}"
		sleep(1.0/2.0)
	end
	id = gets.chomp
	product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
	puts Rainbow("Do you really want to delete #{product['name']}? (y/n)").red
	answer = gets.chomp
	if answer == 'y'
		@conn.exec("DELETE FROM products WHERE id = '#{id}';")
		puts
		puts Rainbow("You have deleted #{product['name']}.").magenta
	end
end

def inventory
	puts
	@total_value = "0".to_f
	all_products = @conn.exec("SELECT * FROM products;")
	all_products.each do |product|
		quantity = product['quantity'].to_f
		price = product['price'].gsub("$","").to_f
		@total_value += (quantity * price)
	end
	puts "The total value of your inventory is $#{@total_value.to_i}"
end

def menu
	sleep(2)
	puts
	puts
	puts Rainbow("  What would you like to do?").red
	sleep(1)
	puts
	puts Rainbow("  (?)	search").white
	puts Rainbow("  (d)	display").blue
	puts Rainbow("  (a)	add").white
	puts Rainbow("  (u)	update").blue
	puts Rainbow("  (o)	order").white
	puts Rainbow("  (s)	ship").blue
	puts Rainbow("  (r)	remove").white
	puts Rainbow("  (i)	inventory").blue
	puts Rainbow("  (q)	quit").red
	puts
	input = gets.chomp

	case input
	when "?"
		search
	when "d"
		display
	when "a"
		add
	when "u"
		update
	when "o"
		order
	when "s"
		ship
	when "r"
		remove
	when "i"
		inventory
	when "q"
		Kernel.exit
	end
end
puts
puts
puts Rainbow("   -=-= AmaZone Store =-=-").cyan

input = menu
while input != 'q'
	input = menu
end

