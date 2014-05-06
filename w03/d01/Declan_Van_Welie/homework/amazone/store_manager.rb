require 'pg'


@conn = PG.connect(dbname: 'inventory')

#Create new products

# INSERT INTO inventory_db(product_name, product_price, product_description) VALUES('#{product_name}','#{product_price}','#{product_description}');")
puts "Welcome to the product inventory. What would you like to do: (C)reate a new product, (S)earch a product, (U)pdate a product, or (D)elete a product?"

user_input = gets.chomp

case

when user_input == "c"
  # puts add_product
   puts "What is your product called?"
  product_name = gets.chomp
  puts "What is its price?"
  product_price = gets.chomp
  puts "What is the description of your product?"
  product_description = gets.chomp

  add_product(product_name,product_price, product_description)

  # @conn.exec("INSERT INTO products (name, price, description) VALUES('#{product_name}','#{product_price}','#{product_description}');")
  # puts "You created "
when user_input == "s"
  puts "Do you want to search by id or name?"
  category = gets.chomp
  if category == "id"
    result =  @conn.exec("SELECT * FROM products WHERE #{category} = #{query_term}';")
    result.each do |product|
      product.each do |k, v|
        puts "#{k}: #{v}"
  else
     result =  @conn.exec("SELECT * FROM products WHERE #{category} = #{query_term}';")
    result.each do |product|
      product.each do |k, v|
        puts "#{k}: #{v}"

when user_input == "u"
  update_product
when user_input == "d"
  delete_product
else
  puts "I'm sorry, try again. Please input (C)reate a new product, (S)earch a product, (U)pdate a product, or (D)elete a product."
end



# def add_product (product_name, product_price, product_description)
#   puts "What is your product called?"
#   product_name = gets.chomp
#   puts "What is its price?"
#   product_price = gets.chomp
#   puts "What is the description of your product?"
#   product_description = gets.chomp

#   @conn.exec("INSERT INTO library(name, price, description) VALUES('#{product_name}','#{product_price}','#{product_description}');")

#   new_product = @conn.exec("SELECT * FROM products WHERE id=IDENT_CURRENT('products');")

#   puts "new_product"
# end


# def search(category, query_term)
#   puts "Do you want to search by id or name?"
#   category = gets.chomp
#   if category == "id"
#     result =  @conn.exec("SELECT * FROM products WHERE #{category} = #{query_term}';")
#     result.each do |product|
#       product.each do |k, v|
#         puts "#{k}: #{v}"
#   else
#      result =  @conn.exec("SELECT * FROM products WHERE #{category} = #{query_term}';")
#     result.each do |product|
#       product.each do |k, v|
#         puts "#{k}: #{v}"
#   end
# end

# def update()

# INSERT INTO products(name, price, description) VALUES('snickers', 2.00,'candy
#   INSERT INTO products (name, price, description) VALUES('snickers', 2.00,'candy');
