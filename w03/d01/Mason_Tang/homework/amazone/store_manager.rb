require 'pg'

@conn = PG.connect(dbname: 'amazone')


# find name id number
def add_products(name, price, description, quantity)
  @conn.exec("INSERT INTO products (name, price, description, quantity) VALUES ('#{name}', '#{price}', '#{description}', '#{quantity}');")

  puts "You created #{name} a #{description}, that costs $#{price}"
end




def display_products
  all_products = @conn.exec("SELECT * FROM products;")
  all_products.each do |product|
    product.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end

# SELECT * FROM students WHERE first_name = '';

def search(category, query_term)
  result = @conn.exec("SELECT * FROM products WHERE #{category} = '#{query_term}';")
  result.each do |product|
    product.each do |k, v|
      puts "Here are all the products that matched your search :#{k}: #{v}"
    end
  end
end

# UPDATE students SET first_name = '' WHERE id = '';

def update(category, category2, category3, query_term, query_term2, query_term3, id)
  @conn.exec("UPDATE products SET #{category} = '#{query_term}' WHERE id = '#{id}';")
  @conn.exec("UPDATE products SET #{category2} = '#{query_term2}' WHERE id = '#{id}';")
  @conn.exec("UPDATE products SET #{category3} = '#{query_term3}' WHERE id = '#{id}';")
  puts "Your record has been updated"
end

# def update_quanity(category, query_term)
#   @conn.exec("UPDATE products SET #{category} = '#{query_term}' WHERE id = '#{id}';")
#   puts "You have added #{category} (product) and now have (find product total) (name)"
# end


# def quant(category, query_term, id)


#   @conn.exec("UPDATE products SET #{category} = '#{query_term}' WHERE id = '#{id}';")
#   puts "Your record has been updated"
# end


# DELETE FROM students WHERE id = '';

def delete(id)
  @conn.exec("DELETE FROM products WHERE id = '#{id}';")
  puts "Your record has been deleted"
end



# def quant(category, query_term, id)
#   result = @conn.exec("SELECT * FROM products WHERE #{category} = '#{query_term}';")
#   result.each do |product|
#     product.each do |k, v| v
#     @conn.exec("UPDATE products SET v = '#{query_term}' WHERE id = '#{id}';")

#     end
#   end
# end



puts "What is your product called?"
name = gets.chomp
puts "What is its price?"
price = gets.chomp
puts "What is the description of your product?"
desc = gets.chomp
quantity = 0
puts "You created #{name}"


add_products(name, price, desc, quantity)

puts "Do you wish to search by 'id' or 'name?"
category = gets.chomp
puts "What is your product called?"
query_term = gets.chomp

search(category, query_term)

puts "What is the id of the product you wish to edit?"
id = gets.chomp
puts "What is '        ''s new name?"
category = "name"
query_term = gets.chomp
puts "What is '        ''s new description?"
category1 = "description"
query_term1 = gets.chomp
puts "What is '        ''s new price"
category2 = "price"
query_term2 = gets.chomp

update(category, category1, category2, query_term, query_term1, query_term2, id)


# puts "What is the id of the product you want to order?"
# id = gets.chomp
# puts "You have (number of product) (product). How many do you wish to order?."
# category = "quantity"
# query_term = gets.chomp

# quant(category, query_term, id)


# puts "You have (number of product) (product). How many are you shipping?"
# quantity_shipped = gets.chomp
# puts "Do you really want to delete (product)"
# product_delete = gets.chomp

# delete



