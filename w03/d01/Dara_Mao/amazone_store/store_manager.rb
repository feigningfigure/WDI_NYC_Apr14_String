require 'pg'
require 'pry'

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
#TO-DO: need to add #id after add_products is called back to the output above


# Writing part: INSERT INTO products (prod_name, price, description) VALUES ();
def add_product(prod_name, price, description)
  @conn.exec("INSERT INTO products (prod_name, price, description) VALUES ('#{prod_name}', '#{price}', '#{description}');")
end

add_product(prod_name, price, description)

#STATUS: WORKS !
#===================================================================================
# Requirement 2: A user should be able to search for a product by name or id

# User Interface for the "search" part:
# puts "Do you wish to search by 'id' or 'prod_name'?"
# category = gets.chomp
# puts "What is your product called?"
# query_term = gets.chomp
# puts "Here are all the products that matched your search:"

# # #Search part: SELECT * FROM products WHERE #{category} = '#{query_term}';
# def search(category, query_term)
#   update = @conn.exec("SELECT * FROM products WHERE #{category} = '#{query_term}';")
#   result = @conn.exec("SELECT * FROM pg_stat_activity") do |result|
#     puts "| id | name      | price | description          | quantity
# |---------------------------------------------------------|"
#           result.each do |row|
#             puts " %s" %
#             row.values_at("id", "prod_name", "price", "description", "quantity")
#   end
# end
# end
# search(category, query_term)
# #TO-DO: need to display the "SELECT * FROM products;" from psql to bash

# def display
#    @display_screen = @conn.exec("SELECT * FROM products;")
#  end

#  @display_screen

#STATUS: DISPLAY DOESNT WORK !
#===================================================================================
# Requirement 3: A user should be able to "update" the name, price and description of a product without updating it's quantity at the same time.

# User Interface for the "update" part:
# puts "What is the id of the product do you wish to edit?"
# id = gets.chomp
# puts "What is old_prod_names new name?"
# prod_name = gets.chomp
# puts "What is old_prod_names new description?"
# description = gets.chomp
# #TO-DO: need to consider blank space =nil
# puts "What is old_prod_names new price?"
# price = gets.chomp.to_f
# puts "You updated #{prod_name} #{id}, #{description}, that costs $#{price}"

# def update(prod_name, description, price, id)
#   @conn.exec("
#     UPDATE products
#       SET prod_name = '#{prod_name}',
#           description = '#{description}',
#           price = #{price}
#       WHERE id = '#{id}';
#       ")
# end

# update(prod_name, description, price, id)

#STATUS: WORKS !
#===================================================================================
# Requirement 4: A user should be able to "order" products by incrementing the quantity of a given product by some number N

# User Interface for the "order" part:
# puts "You have #prod.length "
#===================================================================================
#Requirement 5: A user should be able to ship products by decrementing the quantity of a given product by some number N

#===================================================================================
#Requirement 6: A user should be able to delete products. The result of which should also removing their row from the database.

# User Interface for the "delete" part:
puts "What is the id of the product do you wish to delete?"
id = gets.chomp
puts "Do you really want to delete #productname? (y)es or (n)o "
y_n= gets.chomp

# Lookup the prod_name using the id entered:
def search(id)
  result = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")

  array = []
  result.each do |key|
  key.each do |k, v|
    array << v
    end

  prod_name = array[1]
  puts "You have deleted #{prod_name}"
end
end

search(id)


if y_n == 'y'
  def delete(id)
    @conn.exec("DELETE FROM products WHERE id = '#{id}';")
  end
  delete(id)
else
  Kernel::exit
end

#STATUS: WORKS ! (need to call prod_name to output)
#===================================================================================

# result = @conn.exec("SELECT * FROM products WHERE id = '3';")

# result.each do |key|
#   key.each do |k, v|
#     puts v
#   end
# end
   #v is the value of the final array

#result.values =>
#[
#   [0] [
#   [0] "3", [1] "Chocolate", [2] "0", [3] "Ritz chocolate", [4] nil
#   ]
# ]
