require 'pg'
require 'pry'

@conn = PG.connect( dbname: 'products')


def menu_prompt
  puts "Welcome to your Inventory Database: Would you like to (c)reate, (s)earch, (u)pdate, (or)der, (sh)ip, or (d)elete product in the inventory? Otherwise (q)uit"
  @menu_input = gets.chomp
  case @menu_input
  when 'c'
    create_product
  when 's'
    search_product
  when 'u'
    update_product
  when 'd'
    delete_product
  when 'or'
    order_product
  when 'sh'
    ship_product
  when 'q'
    puts "Thank you and Goodbye!"
  end
end

def search_product
  puts "Do you wish to search by 'id', 'name' or return to 'main' menu?"
  search_category = gets.chomp
  if search_category == 'id'
    puts "Great, what is the product id number?"
      id_input = gets.chomp
      puts id_search(id_input)
  elsif search_category == 'name'
    puts "Great, what is the product name?"
      name_input = gets.chomp
      name_search(name_input)
  elsif search_category == 'main'
    @menu_prompt
  else "Do you wish to search by 'id', 'name'or return to main menu?"
  end
end

#CREATE PRODUCT
def create_product(name, price, description)
  @conn.exec("INSERT INTO products (name, price, description) VALUES ('#{name}', '#{price}', '#{description}');")
end

#DISPLAY PRODUCT
def display_products
  all_products = @conn.exec("SELECT * FROM products;")
  all_students.each do |product|
    product.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end

def name_search(name)
  result = @conn.exec("SELECT * FROM products WHERE #{name} = '#{name}';")
  result.each do |product|
    product.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end

def id_search(id)
  result = @conn.exec("SELECT * FROM products WHERE #{id} = '#{id}';")
  result.each do |product|
    product.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end

# QUESTION --->>>>> Can I combine the above two functions to search either name or id?
# def id_search(name, id)
#   result = @conn.exec("SELECT * FROM products WHERE #{name} = '#{name}' OR #{id} = '#{id}';")
#   result.each do |product|
#     product.each do |k, v|
#       puts "#{k}: #{v}"
#     end
#   end
# end


#TO DO ---->>>>> UPDATE products ET first_name = '' WHERE id = '';

def update(id, name )
  puts "What is the id of the product do you wish to edit?"
  id_input = gets.chomp
  puts "What is the updated name of the product?"
  result = @conn.exec("UPDATE products SET #{name} = '#{name}' WHERE id = '#{id}';")
  puts "What is the updated description of the product?"
  result = @conn.exec("UPDATE products SET #{description} = '#{description} WHERE id = '#{id}';")
  puts "What is the updated price of the product?"
  result = @conn.exec("UPDATE products SET #{price} = '#{price}';")
  #puts "Your record has been updated ---> DO I NEED TO CALL ON RESULT?
  # puts "You updated #{name}, #{id}, #{description}, that costs #{price}"
  # #TO DO --->>>> case unless == ""
end

#QUESTION --->>>>> How do you return the name when user inputs ID
  #(1) id_search puts name
  # =>   puts "Do you really want to delete #{name}"
  #(2)
def delete(id)
  result = @conn.exec("SELECT * FROM products WHERE #{id} = '#{id}';")
  @conn.exec("DELETE FROM students WHERE id = '#{id}';")
end

# => Order w/ the following instructions:
#   OUTPUT: You have 40 KitKat Bars.  How many do you wish to order?.
#   INPUT: 10.
#   OUTPUT: You have added 10 KitKat Bars and now have 50 KitKat Bars left.
# def order(id)
#   result = @conn.exec("SELECT * FROM products WHERE #{id} = '#{id}';")
#   @conn.exec("DELETE FROM students WHERE id = '#{id}';")
# end

# # => Ship w/ the following instructions:
# OUTPUT: You have 50 KitKat Bars.  How many are you shipping?.
# INPUT: 20.
# OUTPUT: You have sold 20 KitKat Bars  You now have 30 KitKat Bars left.
# def ship(id)
#   result = @conn.exec("SELECT * FROM products WHERE #{id} = '#{id}';")
#   @conn.exec("DELETE FROM students WHERE id = '#{id}';")
# end



user_prompt
