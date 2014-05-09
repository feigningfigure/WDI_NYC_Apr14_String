
def program_input
	puts "What would you like to accomplish?\n"  
	puts "Type 'C' to create a new item \n'S' to search through the database\n'D' to display the whole database\n'U' to update product info\n'O' to order a new prodcut\n'SH' to ship a product\n'D' to delete a product from the database\n'Q' to quit the program"
	@user_input = gets.chomp.to_s.downcase
end


# INSERT INTO products (name, price, description, quantity) VALUES ();
def add_product(name, price, description)
	@conn.exec("INSERT INTO products (name, price, description, quantity) VALUES ('#{name}', '#{price}', '#{description}', 0);")
end

# SELECT * FROM products WHERE first_name = '';
def product_hash(category, query)
	@conn.exec("SELECT * FROM products WHERE #{category} = '#{query}'")
end


# SELECT * FROM products;
def display_products_database
	pretty_hash_print(@conn.exec("SELECT * FROM products;")) 
end

# SELECT * FROM products;
def select_all_products
	@conn.exec("SELECT * FROM products;")
end

def pretty_hash_print(hash)
	hash.each do |product|
		product.each {|k,v| puts "#{k}: #{v}"}
		puts "-------------------------------"
		puts "-------------------------------"
	end
end

def display_products_database_hash
	@conn.exec("SELECT * FROM products;").each { |product| puts product }
end

# UPDATE products SET first_name = '' WHERE id = '';
def update(category, query, id)
	@conn.exec("UPDATE products SET #{category} = '#{query}' WHERE id = '#{id}';")	
end

def product_hash_with_id(id)
	product_hash = {}
	product_hash["name"] = @conn.exec("SELECT * FROM products WHERE id = '#{id}'")[0]["name"]
	product_hash["price"] = @conn.exec("SELECT * FROM products WHERE id = '#{id}'")[0]["price"]
	product_hash["description"] = @conn.exec("SELECT * FROM products WHERE id = '#{id}'")[0]["description"]
	product_hash["quantity"] = @conn.exec("SELECT * FROM products WHERE id = '#{id}'")[0]["quantity"]
	return product_hash
end

def print_new_product_hash(id)

	new_product_hash = product_hash_with_id(id)

	puts "-------------------------------"
	puts "You created #{new_product_hash["name"]}, a '#{new_product_hash["description"]}', that costs $#{new_product_hash["price"]}"
	puts "-------------------------------"
end

def print_new_quantity(id)

	new_product_hash = product_hash_with_id(id)

	puts "-------------------------------"
	puts "Current quantity of #{new_product_hash["name"]}: #{new_product_hash["quantity"]}"
	puts "-------------------------------"
end
def length_count
	count = -1
	select_all_products.each do |product|
		count +=1
	end
	return count
end

# DELETE FROM students WHERE id = '';


