require 'pg'
require 'pry'

@conexion = PG.connect(dbname: 'webvan')

def add_product(id, name, price, description, quantity)
  @conexion.exec("INSERT INTO products (id, name, price, description, quantity) VALUES ('#{id}','#{name}', '#{price}', '#{description}', '#{quantity}');")
end

def display_it
  all_products = @conexion.exec("SELECT * FROM products;")
  #loop aka iterator
  puts "#{all_products}"

  all_products.each do |x|
    x.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end

def search_it(id_query)
  result = @conexion.exec("SELECT * FROM products WHERE id = '#{id_query}';")
  result.each do |x|
    x.each do |k,v|
      puts "#{k}: #{v}"
    end
  end
end

def search_it(product_query)
  result = @conexion.exec("SELECT * FROM products WHERE name = '#{product_query}';")
  result.each do |x|
    x.each do |k,v|
      puts "#{k}: #{v}"
    end
  end
end

def delete(id)
    @conexion.exec("DELETE FROM products WHERE id = '#{id}';")
      puts "Your record has been deleted"
end


#start logic
#add_product("69", "bouchon", 99.99, "junky products", 9)
puts "Hey boss: valid choices are [no] [display] [new] [search] [product-search] [d] or other??"
choice = gets.chomp 

if choice == "no"
  puts "die"
elsif choice =="display"
  puts "#{display_it}"
  puts "display all done..."
elsif choice =="new"
  puts "type the id"
  id = gets.chomp
  puts "type the name"
  name = gets.chomp

  puts "price??"
  price = gets.chomp

  puts "describe it"
  description = gets.chomp

  puts "how many,... man?"
  quantity = gets.chomp

  add_product("#{id}","#{name}", "#{price}", "#{description}", "#{quantity}")

  puts "guess what you made #{quantity} new product(s) called #{name}, unit cost: #{price}"
elsif choice =="search"
  puts "search by id..."
  id_query = gets.chomp
  search_it("#{id_query}")
elsif choice =="product-search"
  puts "search by name..."
  product_query = gets.chomp
  search_it("#{product_query}")
elsif choice =="d"
  puts "just delete it! by [ID]"
  id = gets.chomp
  delete("#{id}")
end

