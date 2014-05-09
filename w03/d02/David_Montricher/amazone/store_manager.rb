require 'pg'
require 'pry'

# connect to db with .connect method
@conn = PG.connect(dbname: 'amazone_db')

# INSERT INTO products (name, price, description, quantity) VALUES ();

puts "Welcome to AmaZone store manager 0.1!"
puts "Choose from the following menu: "
menu_input = gets.chomp.upcase
puts "A: Add a product"
puts "B: Search a product, price, description or quantity"
puts "C: Update a product, price, description or quantity"
puts "D: Order a product"
puts "E: Ship a product"
puts "F: Delete a product"

case menu_input
when "A"
  add_products
when "B"
  search
when "C"
  update
when "D"
  order
when "E"
  ship
when "F"
  delete
else
  puts "You entered #{menu_input} - We don't have an menu option for this yet!"
end

def add_products(name, price, description, quantity)
  print "Product name: "
  name = gets.chomp
  print "Product price: "
  price = gets.chomp.to_f
  print "Product description: "
  description = gets.chomp
  print "Product quantity: "
  quantity = gets.chomp.to_i
  # mental note: pass on parentheses
  @conn.exec("INSERT INTO products (name, price, description, quantity) VALUES ('#{name}', '#{price}', '#{description}', '#{quantity}';")
end

def search (name, query_term)
  # search by name (1 category search only)
  print "Product name: "
  name = gets.chomp
  result = @conn.exec("SELECT * FROM products WHERE '#{name}' = '#{query_term}';")
  result.each do |product|
  product.each do |k, v|
    puts "#{k}: #{v}"
  end
end

def update
  # update any category of an existing product, including name, price, description and quantity
  print "Name of product to be changed: "
  name_to_change = gets.chomp


  print "Change to add: "
  new_value = gets.chomp
  @conn.exec("UPDATE products SET '#{}' = '#{name_to_change}' WHERE id '#{id}';")

end

def order (name, quantity)
  # when ordering a product add ordered quantity to existing product
  print "Product ID: "
  name = gets.chomp
  print "Product quantity: "
  product_quantity = gets.chomp.to_i
  ordering = @conn.exec("SELECT * FROM products WHERE name = '#{name}';")
  # ordering = do |product_ordered|
  #    + '#{quantity}'
end

def ship
  # shipping a product would only involve deleting quantity of an existing product
  print "Product ID: "
  name = gets.chomp.to_i
  print "Product quantity shipped: "
  quantity_shipped = gets.chomp.to_i
  # substract quantity_shipped from existing value

end

def delete
  print "Product ID: "
  name = gets.chomp.to_i
  # delete ID (and all its data) from table
end
