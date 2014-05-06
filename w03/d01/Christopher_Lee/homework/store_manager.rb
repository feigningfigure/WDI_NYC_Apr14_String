require 'pg'
require_relative 'seed'

@conn = PG.connect(dbname: 'products_db')


# 1) CREATE DATABASE products_db;
# 2) \c products_db
# you already do this above with pg
# 3) \d - display table name (method for this)?
# 4) SELECT * FROM products
# shows everything
# INSERT INTO products (name, price, description, quantity)VALUES('kit kat bars', 4.0, 'really good chocolate covered wafers', 50);

# works for one product

def existing_product?(product_name)
  all_products = @conn.exec("SELECT * FROM products;")
  product_check = []
  all_products.each do |product|
    product.each do |k, v|
      product_check << v
    end
  end
  binding.pry
  product_check.reject! {|x| x.class != String}

#   second_check = []
#   product_check.each do |word|
#     if word.downcase == product_name.downcase
#       second_check << word
#     end
#   end
#   second_check.empty?
end

# .casecmp


def create_product(name, price, description)
  @conn.exec("INSERT INTO products (name, price, description) VALUES ('#{name}', '#{price}', '#{description}');")
end

def select_newest_product(desired_name)
  desired_name = desired_name.split.map(&:capitalize).join(' ')
  selection = @conn.exec("SELECT * FROM products WHERE name = '#{desired_name}' order by ID desc limit 1;")
  selection.each do |item|
    item.each do |k,v|
    return v if k == "id"
    end
  end
end

def search(category, query_term)
  result = @conn.exec("SELECT * FROM products WHERE #{category} = '#{query_term}';")
  result.each do |product|
    product.each do |k, v|
      puts "#{k}: #{v}"
    end
    puts "\n"
  end
end

def search_by_id(id)
  single_product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
  single_product.each do |product|
    product.each do |k, v|
      puts "#{k}: #{v}"
    end
    "\n"
  end
end

def select_by_id(id)
  single_product = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
end

def name_by_id(single_product)
  single_product.each do |product|
     product.each do |k, v|
       if k == "name"
         return v
       end
     end
  end
end

def attributes_by_id(single_product)
  attributes = []
  single_product.each do |product|
     product.each do |k, v|
       attributes << v
     end
  end
  attributes
end

def update(category, query_term, id)
  @conn.exec("UPDATE products SET #{category} = '#{query_term}' WHERE id = '#{id}';")
end

def display_products
  all_products = @conn.exec("SELECT * FROM products;")
  all_products.each do |product|
    product.each do |k, v|
      puts "#{k}: #{v}"
    end
    puts "\n"
  end
end

def delete(id)
  @conn.exec("DELETE FROM products WHERE id = '#{id}';")
end

# pry
# load './store_manager.rb'

def menu
  puts ""
  puts "Welcome to the AmaZone Inventory Manager"
  puts "Please choose from the menu below: "
  puts ""
  puts "A: Create a new product"
  puts "B: Search"
  puts "C: Update product"
  puts "D: "
  puts "E: "
  puts "F: Delete a product"
  puts "G: Display products"
  puts "Q: Quit"
  puts ""
  command = gets.chomp.upcase


  case command
  when "A"
    puts "What is your product called?"
    desired_name = gets.chomp.split.map(&:capitalize).join(' ')
    # if existing_product?("name", desired_name)
    # puts "Product type already in inventory!"
    #   command = "A"
    # end
    puts "What is its price?"
    price = gets.chomp
    puts "What is the description of your product?"
    description = gets.chomp
    create_product(desired_name, price, description)
    puts "You created #{desired_name} (##{select_newest_product(desired_name)}), #{description}, that costs $#{price}"
  when "B"
    puts "Do you wish to search by 'id' or 'name'?"
    category = gets.chomp
    if category == "id"
    puts "What is the product id?"
    id = gets.chomp.to_i
    puts "Here is the product matching id(##{id})"
    puts "#{search_by_id(id)}"
    else
    puts "What your product called?"
    name = gets.chomp.split.map(&:capitalize).join(' ')
    puts "Here are all the products that matched your search:"
    "#{search(category, name)}"
    end
  when "C"
    puts "What is the id of the product do you wish to edit?"
      id = gets.chomp.to_i
      product = select_by_id(id)
      current_name = name_by_id(product)

    puts "What is '#{current_name}'s' new name?"
    new_name = gets.chomp.split.map(&:capitalize).join(' ')
     update("name", new_name, id) unless new_name.length == 0

    puts "What is '#{current_name}'s new description?"
    description = gets.chomp
    update("description", description, id) unless description.length == 0

    puts "What is '#{current_name}'s new price?"
    new_price = gets.chomp
    new_price = new_price.to_f && update("price", new_price, id) unless new_price.length == 0

    product = select_by_id(id)
    changes_array = attributes_by_id(product)

    unless new_name.length + description.length == 0
    puts "You updated #{changes_array[1]} (##{changes_array[0]}), #{changes_array[3]}, that costs $#{changes_array[2]}"
    end

  when "D"
    # Order
  when "E"
    # Ship
  when "F"
    puts "What is the id of the product do you wish to delete?"
    id = gets.chomp.to_i
    product = select_by_id(id)
    current_name = name_by_id(product)
    puts "Do you really want to delete #{current_name}?(Yes/No)"
    response = gets.chomp.upcase
    if response = "Yes" || "Y"
      puts "#{current_name} has been deleted"
      delete(id)
    else
      puts "Delete aborted"
    end
  when "G"
    display_products
  when "Q"
    Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end

