require 'pg'


@db = PG.connect(dbname: 'amazone_db')


def menu

  puts "========================================================================"
  puts           "                     Welcome to Amazone Store!"
  puts "    Please choose the option from the menu below by just typing a letter:"
  puts 
  puts "L: List me all the products"
  puts
  puts "C: Create a new product"
  puts "F: Find a product"
  puts "U: Update info about a products"
  puts "O: Order the products from supplier"
  puts "S: Ship the products to customer"
  puts "D: Delete products" 
  puts
  puts "Q: Quit"
  puts 
  puts "========================================================================"
  response = gets.chomp.upcase


  case response

  when "L"

    display = @db.exec("SELECT * FROM storage;")

    display.each do |item|
      item.each do |k, v|
      puts "#{k}: #{v}"
    end
  end

  when "C"
    puts "What is your product called?"
    name_create_product = gets.chomp

    #make validation

    puts "What is its price?"
    price_create_product = gets.chomp

    puts "What is the description of your product?"
    description_create_product = gets.chomp

    @db.exec("INSERT INTO storage (name, price, description) VALUES ('#{name_create_product}', '#{price_create_product}', '#{description_create_product}');")

    #I need an Id here as well
    puts "You created #{name_create_product}, #{description_create_product}, that costs $#{price_create_product}"

  when "F"
    puts "Do you wish to search by 'id' or 'name'?"
    choose_search = gets.chomp
    puts "What are you looking for?"
    item_search = gets.chomp
    
    search_result = @db.exec("SELECT * FROM storage WHERE #{choose_search} = '#{item_search}';")

    search_result.each do |item|
    	item.each do |k, v|
			puts "#{k}: #{v}"
		end		
	end

	when "U"
  

  puts "What is the id of the product do you wish to edit?"
  id_update = gets.chomp
  
  current_name_temp = @db.exec("SELECT * FROM storage where id = '#{id_update}';")


  #need to extract name from DB
  current_name = current_name_temp.each do |k,v|
      puts "#{k}" 
    end
    
  
#   def name_by_id(single_product)
#   single_product.each do |product|
#     product.each do |k, v|
#       if k == "name"
#         return v
#       end
#     end
#   end
# end
  #current_description = @db.exec("SELECT * FROM storage where description = '#{id_update}';")
  puts "What is #{current_name} new name?"
  
  new_name_update_temp = gets.chomp
  if new_name_update_temp.empty?
    new_name_update = current.current_name
    puts "Nothing to update"
  else 
    new_name_update = new_name_update_temp
  end
 #need to do the same with description and price, bud IDK how to feth old name, description and price
  puts "What is #{current_name} new description?"
  new_description_update = gets.chomp
  puts "What is #{current_name} new price?"
  new_price_update = gets.chomp


  @db.exec("UPDATE storage SET name = '#{new_name_update}', description = '#{new_description_update}', price = '#{new_price_update}' WHERE id = '#{id_update}';")
  #IDK how to make it puts "You have updated #{current_name} with #{id_update} that "

  when "O"
    #IDK how to show current_storage_amount
    current_storage_amount = @db.exec("SELECT quantity FROM storage;")
    puts "You have #{current_storage_amount} goods. How many do you wish to order?"
    order = gets.chomp

    #db code
    @db.exec("UPDATE storage SET quantity = '#{current_sotrage_amount.to_i + order.to_i}';")

    new_storage_amount = @db.exec("SELECT quantity FROM storage;")
    puts "You have added #{order} and now have #{new_storage_amount} left"

  when "S"
    #IDK how to show current_storage_amount
    current_storage_amount = @db.exec("SELECT quantity FROM storage;")
    puts "You have #{current_storage_amount} goods. How many do you wish to ship?"
    ship = gets.chomp

    #db code
    @db.exec("UPDATE storage SET quantity = '#{current_sotrage_amount.to_i - ship.to_i}';")

    new_storage_amount_after_shipping = @db.exec("SELECT quantity FROM storage;")
    puts "You have shipped #{ship} and now have #{new_storage_amount} left"

  when "D"
    puts "What is the id of the product do you wish to delete?"
    id_delete = gets.chomp
    name_for_deleting = "Macintosh"
    puts "Do you really want to delete 'Macintosh' y/n ?"
    reply = gets.chomp
    if reply == "y" || reply == "yes" || reply == "Yes"
      @db.exec("DELETE FROM storage WHERE id = '#{id_delete}';")
       puts "You have deleted #{name_for_deleting}"
     else 
      puts "I don't delete anything"
    end
  when "Q"
    Kernel.exit
  else
      puts "I don't know this command yet. Please, put only one letter from stated below"
  end
end

response = menu
while response != "Q"
  response = menu
end
