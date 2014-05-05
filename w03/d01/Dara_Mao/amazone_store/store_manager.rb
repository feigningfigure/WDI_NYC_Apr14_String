require 'pg'

@conn = PG.connect(dbname: 'amazone_store')

# Requirement 1: A user should be able to create new products using a command-line interface.
#User Interface for the "create" part:
puts "What is your product called?"
prod_name = gets.chomp
puts "What is its price?"
price = gets.chomp.to_f
puts "What is the description of your product?"
description = gets.chomp
puts "You created #{prod_name} #{description}, that costs $#{price}"

# Writing part: INSERT INTO products (prod_name, price, description) VALUES ();
def add_product(prod_name, price, description)
  @conn.exec("INSERT INTO products (prod_name, price, description) VALUES ('#{prod_name}', '#{price}', '#{description}');")
end

add_product(prod_name, price, description)

#Requirement 2: A user should be able to search for a product by name or id
#User Interface for the "search" part:
puts "Do you wish to search by 'id' or 'name'?"
choice = gets.chomp
puts "What is your product called?"
prod_name = gets.chomp
puts "Here are all the products that matched your search:"
#displays all the products

