require 'pg'
require 'pry'
@conn = PG.connect(dbname: 'project_manager')

def menu
  puts "What would you like to do: create, search, update, order, ship, delete, or exit?\n"
  input = gets.chomp.downcase
  case input
  when "create"
    puts "What is your product called?\n"
    name = gets.chomp
    puts "What is its price?\n"
    price = gets.chomp
    puts "What is the description of your product?\n"
    description = gets.chomp
    puts "You created 1 #{name}, #{description}, that costs $#{price}.\n"
    @conn.exec("INSERT INTO products (name, price, description, quantity) VALUES ('#{name}', '#{price}', '#{description}', 1);")
  when "search"
    puts "Do you wish to search by 'id' or 'name'?\n"
    category = gets.chomp
    puts "What #{category}?\n"
    query = gets.chomp
    puts "Here are all the products that matched your search:\n"
    result = @conn.exec("SELECT * FROM products WHERE #{category} = '#{query}';")
    puts " id | name | price | description | quantity "
    puts "-------------------------------------------- "
    result.each do |product|
      puts "  #{product['id']} | #{product['name']} | #{product['price']} | #{product['description']} | #{product['quantity']} |"
    end
  when "update"
    puts "What is the id of the product do you wish to edit?\n"
    id = gets.chomp
    puts "What is the new name?\n"
    new_name = gets.chomp
    puts "What is the new description?\n"
    new_desc = gets.chomp
    puts "What is the new price?\n"
    new_price = gets.chomp
    result = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
    if new_name == ''
      new_name = result[0]["name"].to_s
    end
    if new_desc == ''
      new_desc = result[0]["description"].to_s
    end
    if new_price == ''
      new_price = result[0]["price"].to_s
    else
      new_price = new_price.to_f
    end
    @conn.exec("UPDATE products SET name = '#{new_name}' WHERE id = '#{id}';")
    @conn.exec("UPDATE products SET description = '#{new_desc}' WHERE id = '#{id}';")
    @conn.exec("UPDATE products SET price = '#{new_price.to_f}' WHERE id = '#{id}';")
    puts "You updated #{new_name}, #{new_desc}, that costs $#{new_price}.\n"
  when "order"
    puts "What is the id of the product do you wish to order?\n"
    id = gets.chomp
    result = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
    puts "You have #{result[0]['quantity'].to_s} #{result[0]['name'].to_s}s. How many do you wish to order?\n"
    order = gets.chomp.to_i
    total = order + result[0]['quantity'].to_i
    puts "You have added #{order} #{result[0]['name'].to_s}s and now have #{total} #{result[0]['name'].to_i}s left.\n"
    @conn.exec("UPDATE products SET quantity = '#{total}' WHERE id = '#{id}';")
  when "ship"
    puts "What is the id of the product do you wish to ship?\n"
    id = gets.chomp
    result = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
    puts "You have #{result[0]['quantity'].to_s} #{result[0]['name'].to_s}s. How many do you wish to ship?\n"
    order = gets.chomp.to_i
    total = order - result[0]['quantity'].to_i
    puts "You have shipped #{order} #{result[0]['name'].to_s}s and now have #{total} #{result[0]['name'].to_i}s left.\n"
    @conn.exec("UPDATE products SET quantity = '#{total}' WHERE id = '#{id}';")
  when "delete"
    result = @conn.exec("SELECT * FROM products;")
    puts " id | name | price | description | quantity "
    puts "-------------------------------------------- "
    result.each do |product|
      puts "  #{product['id']} | #{product['name']} | #{product['price']} | #{product['description']} | #{product['quantity']} |"
    end
    puts "which item would you like to delete?\n"
    id = gets.chomp
    @conn.exec("DELETE FROM products WHERE id = '#{id}';")
    puts "deleted!\n"
  when "exit"
    Kernel.exit
  end
end
response = menu
while response != 'exit'
  response = menu
end
