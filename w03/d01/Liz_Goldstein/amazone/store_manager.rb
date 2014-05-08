require 'pg'

@conn = PG.connect(dbname: 'products')

def add_product(name, price, description)
    @conn.exec("INSERT INTO products (name, price, description) VALUES ('#{name}', '#{price}', '#{description}');")
    puts "You created #{name}; #{description}, that costs $#{price}."
end

def name_search(query)
  puts "Here are all the products matching your search:"
  result = @conn.exec("SELECT * FROM products WHERE name = '#{query}';")
  puts result
  result.each do |match|
    match.each do |k, v|
      puts "#{k} : #{v}"
      end
    end
end

def id_search(query)
  puts "Here are all the products matching your search:"
  result = @conn.exec("SELECT * FROM products WHERE id = '#{query}';")
  puts result
  result.each do |match|
    match.each do |k, v|
      puts "#{k} : #{v}"
      end
    end
end

def id_return(query)
result = @conn.exec("SELECT * FROM products WHERE id = '#{query}';")
end

def id_update(id)
  puts "What should product #{id}'s new name be?"
  new_name = gets.chomp
    if new_name.empty? == false
      @conn.exec("UPDATE products SET name = '#{new_name}' WHERE id = '#{id}';")
    else
      puts "No name change."
    end
  puts "What should product #{id}'s new description be?"
    new_description = gets.chomp.to_s.gsub(/'/, "\\'")
    if new_description.empty? == false
      @conn.exec("UPDATE products SET description = '#{new_description}' WHERE id = '#{id}';")
    else
      puts "No description change."
    end
  puts "What is #{id}'s new price?"
    new_price = gets.chomp.to_f
    if new_price.is_a?(Float) && new_price > 0
      @conn.exec("UPDATE products SET price = '#{new_price}' WHERE id = '#{id}';")
    else
      puts "No price change."
    end
  puts "YOUR UPDATED SKU:"
  id_search(id)
end

def add_inventory(query)
  current_listing = id_return(query)
  puts "You have #{current_listing[0]["quantity"]} #{current_listing[0]["name"]}."
  puts "How many do you want to add?"
  new_quantity = gets.chomp.to_i
  total = current_listing[0]["quantity"].to_i + new_quantity
  @conn.exec("UPDATE products SET quantity = '#{total}' WHERE id = '#{query}';")
  puts "Your record has been updated!"
end

def ship_inventory(id)
  current_listing = id_return(id)
  puts "You have #{current_listing[0]["quantity"]} #{current_listing[0]["name"]}."
  puts "How many do you want to ship?"
  new_quantity = gets.chomp.to_i
  total = current_listing[0]["quantity"].to_i - new_quantity
  @conn.exec("UPDATE products SET quantity = '#{total}' WHERE id = '#{id}';")
  puts "Your record has been updated!"
end

def delete_sku(id)
  @conn.exec("DELETE FROM products WHERE id = '#{id}'")
    puts "Your record has been deleted"
end

def menu
  puts ""
  puts "Welcome to AmaZone inventory master control!"
  puts "Please choose an operation from the menu below:"
  puts "1. CREATE a new AmaZone product SKU."
  puts "2. SEARCH for a product by product name or ID#."
  puts "3. UPDATE or change and existing SKU."
  puts "4. ADD additional quantities for an existing SKU."
  puts "5. SHIP existing inventory."
  puts "6. DELETE an existing SKU that has bene discontinued."
  puts "Or type 'Q to exit."

  command = gets.chomp.upcase.to_s

  case command
    when "1"
      puts "What is your product called?"
      product_name = gets.chomp
      puts "What is its price?"
      price = gets.chomp.gsub(/\D/,'').to_i
      puts "What is the description of your product?"
      description = gets.chomp.to_s.gsub(/'/, "\\'")
      add_product(product_name, price, description)


  when "2"
    puts "Search by name press 1"
    puts "Search by ID press 2"
    prompt = gets.chomp.to_i
      if prompt == 1
        puts "What's the name of the product you're looking for?"
        query = gets.chomp.to_s
        name_search(query)
      else prompt == 2
        puts "What is the ID# of the product you're looking for?"
        query = gets.chomp.to_i
        id_search(query)
      end


  when "3"
    puts "What is the ID # of the product listing to edit?"
    query = gets.chomp.to_i
    id_update(query)

  when "4"
    puts "What is the ID # of the inventory to add?"
    query = gets.chomp.to_i
    add_inventory(query)

  when "5"
    puts "What is the ID # of the inventory to ship out?"
    query = gets.chomp.to_i
    ship_inventory(query)

  when "6"
    puts "What is the ID of the product SKU to delete?"
    query = gets.chomp.to_i
    delete_sku(query)
  when "Q"
    Kernel.exit
  end

response = menu
while response != "Q"
  response = menu
end

end
menu
