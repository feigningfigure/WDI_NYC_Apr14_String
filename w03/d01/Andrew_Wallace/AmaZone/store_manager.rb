require 'pg'
require 'pry'

@conn = PG.connect(dbname: 'amazone')

# CREATE A NEW PRODUCT

def display_products
  all_products = @conn.exec("SELECT * FROM products;")
  all_products.each do |product|
    product.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end


def create
  puts "What is your product called?"
  name = gets.chomp
  puts "What is its price?"
  price = '%.2f' % gets.chomp
  puts "What is the description of your product?"
  description = gets.chomp.to_s
  @conn.exec("INSERT INTO products (name, price, description) VALUES ('#{name}', '#{price}', '#{description}');")
  puts "You created a #{name}, #{description}, that costs $#{price}"
end


def search
  puts "Do you wish to search by ID or NAME?"
  response = gets.chomp.downcase
  case response
    when "id"
        puts "What is the ID of the product you are looking for?"
        id = gets.chomp.to_i
        puts "Here are all the products that match your search:"
        all_products = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")
          # binding.pry
          all_products.each do |product|
          product.each do |k, v|
              puts "#{k}:  #{v}"
            end
          end

    when "name"
        puts "What is your product called?"
        name = gets.chomp
        puts "Here are all the products that match your search:"
        all_products = @conn.exec("SELECT * FROM products WHERE name = '#{name}';")
          # binding.pry
          all_products.each do |product|
          product.each do |k, v|
              puts "#{k}:  #{v}"
            end
          end
    else
      puts "I'm sorry I didn't understand your response."
      search
  end
end

def update
puts "What is the ID of the product you wish to edit?"
  id = gets.chomp
  results = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
  initial_name = results["name"]

  puts "What is #{results["name"]}'s new name?"
  name = gets.chomp
  @conn.exec("UPDATE products SET name = '#{name}' WHERE id = '#{id}';")
  results = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]

  puts "What is #{results["name"]}'s description?"
  description = gets.chomp
  @conn.exec("UPDATE products SET description = '#{description}' WHERE id = '#{id}';")
  results = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]

  puts "What is #{results["name"]}'s price?"
  price = '%.2f' % gets.chomp
  @conn.exec("UPDATE products SET price = '#{price}' WHERE id = '#{id}';")
  results = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
  puts "Your record has been updated"
  puts "#{initial_name} has now been changed to #{results['name']} with a new description of #{results['description']} and a price of $#{results['price']}"
end

def order
  puts "What is the ID of the product you would like to order?"
  id = gets.chomp
  results = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
  if results['quantity'] == nil
    puts "You don't have any #{results['name']}.  How many do you want?"
    order = gets.chomp.to_i
  @conn.exec("UPDATE products SET quantity = '#{order}' WHERE id = '#{id}';")
  else
  puts "You have #{results['quantity']} #{results['name']}'s. How many do you wish to order?"
  order = gets.chomp.to_i
  @conn.exec("UPDATE products SET quantity = '#{results['quantity'].to_i + order}' WHERE id = '#{id}';")
  end
  results = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
  puts "You have added #{order} #{results['name']}s and now have #{results['quantity']}"

end

def ship
  puts "What is the ID of the product you would like to ship?"
  id = gets.chomp
  results = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
  puts "You have #{results['quantity']} #{results['name']}s."
  puts "How many would you like to ship?"
  ship = gets.chomp.to_i
  if ship > results['quantity'].to_i
    puts "You don't have enough #{results['name']}s in stock."
  else
    @conn.exec("UPDATE products SET quantity = '#{results['quantity'].to_i - ship}' WHERE id = '#{id}';")
    results = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
    puts "You have sold #{ship} #{results['name']}s and now have #{results['quantity']} #{results['name']} left."
  end
end


def delete
  puts "What is the ID of the product you wish to delete?"
  id = gets.chomp
  results = @conn.exec("SELECT * FROM products WHERE id = '#{id}';")[0]
  item = results['name']
  puts "Do you really want to delete #{results['name']}?"
  response = gets.chomp.downcase
  if response == 'yes' || response == 'y'
    @conn.exec("DELETE FROM products WHERE id = '#{id}';")
    puts "#{item} has been deleted."

  elsif response == 'no' || response == 'n'
    puts "Delete operation cancelled."

  else
  puts "I did not recognize your answer."
  end

end





