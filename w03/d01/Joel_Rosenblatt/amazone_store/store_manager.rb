require 'pg'

@conn = PG.connect(dbname: 'products_db')

def create
  puts "What is your product called?"
  name = gets.chomp
  puts "What is its price?"
  price = gets.chomp
  puts "What is the description of your product?"
  description = gets.chomp

  @conn.exec("INSERT INTO products (name, price, description) VALUES ('#{name}', '#{price}', '#{description}');")

  puts "You created #{name} (#{id}). #{description}, that costs $#{price}."
end

def display_products
  all_products = @conn.exec("SELECT * FROM products;")
  all_products.each do |product|
    product.each do |k,v|
      puts "#{k}: #{v}"
    end
  end
end

def search
  puts "Do you wish to search by 'id' or 'name'?"
  category = gets.chomp
  case category
  when 'name'
    puts "What is your product called?"
    query_term = gets.chomp
  when 'id'
    puts "What is your product's id?"
    query_term = gets.chomp
  end
  result = @conn.exec("SELECT * FROM products WHERE #{category} = '#{query_term}';")
  result.each do |product|
    product.each do |k,v|
      puts "#{k}: #{v}"
    end
  end
end

def update
  puts " What is the id of the product do you wish to edit?"
  id = gets.chomp
  puts "What is #{name}'s new name?"
  new_name = gets.chomp
  case new_name
  when nil
    new_name = name
  else
    @conn.exec("UPDATE products SET name = '#{new_name}' WHERE id = '#{id}';")
  end
  puts "What is #{name}'s' new description?"
  new_description = gets.chomp
  case new_description
  when nil
    new_description = description
  else
    @conn.exec("UPDATE products SET description = '#{new_description}' WHERE id = '#{id}';")
  end
  puts "What is #{name}'s new price?"
  new_price = gets.chomp
  case new_price
  when nil
    new_price = price
  else
    @conn.exec("UPDATE products SET price = '#{new_price}' WHERE id = '#{id}';")
  end

  puts "You updated #{name} #{name}, #{description}, that costs $#{price}."
end

def order
  puts "What's the id of the item you want to order?"
  id = gets.chomp
  puts "You have #{quantity} #{name}.  How many do you wish to order?."
  order = gets.chomp
  @conn.exec("UPDATE products SET quantity = '#{quantity+order}' WHERE id = '#{id}';")
  puts "You have added #{order} #{name} and now have #{quantity} #{name} left."
end

def ship
  puts "What's the id of the item you want to order?"
  id = gets.chomp
  puts "You have #{quantity} #{name}.  How many do you wish to ship?"
  ship = gets.chomp
  @conn.exec("UPDATE products SET quantity = '#{quantity-ship}' WHERE id = '#{id}';")
  puts "You have sold #{ship} #{name} and now have #{quantity} #{name} left."
end

def delete
  puts "What is the id of the product do you wish to delete?"
  id = gets.chomp
  puts "Do you really want to delete #{name}?"
  answer = gets.chomp.downcase
  case answer
  when "yes"
    puts "You have deleted #{name}."
    @conn.exec("DELETE FROM products WHERE id = '#{id}';")
  else
    puts "No changes made."
  end
end
