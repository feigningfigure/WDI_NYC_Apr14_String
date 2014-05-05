#TO DO: 
#ADD #{ID} LATER
#quantity

require 'pg'

@conn = PG.connect(dbname: 'amazone')

# def create_new_product(name, price, description, quantity)
# 	@conn.exec("INSERT INTO products (name, price, description, quantity) VALUES ('#{name}', '#{price}', '#{description}');")

# 	puts "You created #{name}, #{description}, that costs $#{price}, with a quantity of #{quantity}."
# end

# 	puts "What is your product called?"
# 	name = gets.chomp
# 	puts "What is its price?"
# 	price = gets.chomp
# 	puts "What is the description of your product?"
# 	description = gets.chomp
# 	puts "What is the quantity of your product?"
# 	quantity = gets.chomp

# 	create_new_product(name, price, description, quantity)

#SEARCH
# def search(search_type, search_item)
# 	result = @conn.exec("SELECT * FROM products WHERE #{search_type} = '#{search_item}';")
# 	result.each do |product|
# 		product.each do |k, v|
# 			puts "#{k}: #{v}"
# 		end		
# 	end
# end

# 	puts "Do you wish to search by 'id' or 'name'?"
# 	search_type = gets.chomp
# 	puts "What is your product id/name?"
# 	search_item = gets.chomp
# 	# puts "Here are all the products that matched your search: #{result}"

# search(search_type, search_item)

#UPDATE


# def update(update_id, new_name, new_description, new_price)
# 	@conn.exec("UPDATE products SET name = '#{new_name}' WHERE id = '#{update_id}';")
# 	@conn.exec("UPDATE products SET description = '#{new_description}' WHERE id = '#{update_id}';")
# 	@conn.exec("UPDATE products SET price = '#{new_price}' WHERE id = '#{update_id}';")



# # UPDATE table1 
# #    SET col1 = othertable.col2,
# #        col2 = othertable.col3 
# #   FROM othertable 
# #  WHERE othertable.col1 = 123;

# 	puts "Your record has been updated"
# end

# puts "What is the id of the product you wish to edit?"
# update_id = gets.chomp
# puts "What is the product's new name?"
# new_name = gets.chomp
# puts "What is the product's new description?"
# new_description = gets.chomp 
# puts "What is the product's new price?"
# new_price = gets.chomp

# update(update_id, new_name, new_description, new_price)

# #ORDER
def order(order_id)
# HOW DO YOU ADD TO EXISTING QUANTITY?
	@conn.exec("UPDATE students SET quantity = '#{order_term}.to_i + ' WHERE id = '#{order_id}';")
puts "You have added 10 KitKat Bars and now have 50 KitKat Bars left."
# end

# #SHIP
# def ship()
	
# end

# #DELETE
# def delete(delete_id)
# 	@conn.exec("DELETE FROM products WHERE id = '#{delete_id}';")
# 	puts "Your record has been deleted"
# end

