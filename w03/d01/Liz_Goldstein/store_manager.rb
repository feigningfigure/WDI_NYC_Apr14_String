require 'pg'

@conn = PG.connect(dbname: 'products')

def add_product(product_name, price, description)
  @conn.exec("INSERT INTO products (product_name, price, description) VALUES ('#{product_name}', '#{price}', '#{description}');")
end

def menu
  puts ""
  puts "Welcome to AmaZone inventory master control!"
  puts "Please choose an operation from the menu below:"
  puts "1. CREATE a new AmaZone product SKU."
  puts "2. SEARCH for a product by product name AZIN#."
  puts "3. UPDATE or change and existing AmaZone SKU."
  puts "4. ADD additional quantities for an existing SKU."
  puts "5. SHIP inventory."
  puts "6. DELETE an existing SKU tjat has bene discontinued."
  puts "Or type 'Q to exit."

  command = gets.chomp.upcase.to_s

  case command
  when "1"
    puts "What is your product called?"
    product_name = gets.chomp
    puts "What is its price?"
    price = gets.chomp.to_s
    puts "What is the description of your product?"
    description = gets.chomp
    add_product(product_name, price, description)
    puts "You created #{product} #{id}; #{description}, that costs #{price}!"


#   when "Q"
#     Kernel.exit
#   end
# end

# response = menu

# while response != "Q"
#   response = menu
end

menu
