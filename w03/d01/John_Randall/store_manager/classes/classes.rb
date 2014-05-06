class Setuper
  def self.create_database(database_name)
    ### TO DO = This should only be run once on first setup.
                                                              #### CAN THIS BE DONE FROM RUBY?
  end

  def self.create_table(table_name)
                                                          # TODO: IF TABLE DOES NOT EXIST
    $db.exec(
      "CREATE TABLE #{$table_name}
      (product_id serial NOT NULL primary key, 
        product_name varchar(255),
        product_price decimal(7,2),
        product_description text,
        product_quantity_in_stock integer
        )
      ")
  end
end


class Ui
  def self.go()
    display_menu()
  end
  
  def self.display_menu
    puts ""
    puts ""
    puts "what would you like to do?"
    puts "(c)reate, (u)pdate, (d)elete, (o)rder, (s)hip, (f)ind, (b)rowse, (q)uit?"
    response = gets.chomp
    process_menu_response(response)
  end

  def self.process_menu_response(response)
    case response.downcase
    when 'c' 
      Inventory_manager.create_product_record()
    when 'u' 
      Inventory_manager.update_product_record()
    when 'd'
      Inventory_manager.delete_product_record
    when 'o'
      Inventory_manager.order_product
    when 's'
      Inventory_manager.ship_product
    when 'f'
      Inventory_manager.find
    when 'b'
      Inventory_manager.browse
    when 'q'
      #kernal exit???
    else 
      display_menu
    end
    display_menu
  end

end



class Validator
  def self.get_and_validate (question, requirements_hash = {})

    puts question
    response = gets.chomp

    if requirements_hash['required'] == true and requirements_hash['money'] != true and requirements_hash['integer'] != true and requirements_hash['yes_or_no']!= true
      while response.empty? == true
        puts 'required, please try again'
        puts question
        response = gets.chomp
      end
    end

    if requirements_hash['money'] == true and response != nil
                                                                             ###TODO: Check for money format
    end

    

    if requirements_hash['positive_integer'] == true 
      response = response.to_i
      while response.to_i >1000 or response.to_i <0
        puts "Please enter a number between 0 and 1000"
        puts question
        response = gets.chomp.to_i
      end
    end


    if requirements_hash['yes_or_no'] == true                   #(FYI - all of these 'yes or no' constructions are required right now, 2014-05-05)
      while response.downcase != 'yes' and response.downcase != 'y' and response.downcase != 'no' and response.downcase != 'n'
        puts "Please enter yes or no. ('Yes' or 'y' will complete the action. 'No' or 'n' will cancel the action.) Please try again."
        puts question
        response = gets.chomp
      end
      if response.downcase == 'yes' or response.downcase == 'y'
        return true
      else
        return false
      end
    end

    return response
  end
end






class Inventory_manager
  def self.create_product_record
#       # - A user should be able to ``create`` new products using a command-line interface.
#       # ```
#       # OUTPUT: What is your product called?
#       # INPUT: KitKat Bar
#       # OUTPUT: What is its price?
#       # INPUT: 2.50
#       # OUTPUT: What is the description of your product?
#       # INPUT: A delicious candy bar
#       # OUTPUT: You created KitKat Bar (#1), A delicious candy bar, that costs $2.50
#       # ```
    product_name = Validator.get_and_validate('What Is the new product called?', {required: true})
    product_price = Validator.get_and_validate('What is its price?', {required: true, money: true})
    product_description = Validator.get_and_validate('What is its description?')
    puts "You entered '#{product_name}', #{product_description}, which costs #{product_price}."
    $db.exec("INSERT INTO #{$table_name} (product_name, product_price, product_description) VALUES ('#{product_name}', '#{product_price}', '#{product_description}')")
    # $db.exec TODO READ BACK AND CONFIRM
  end

  def self.update_product_record
#     # - A user should be able to``update`` the name, price and description of a product **without** updating it's quantity at the same time.  
#     # - If a user leaves the responses blank, they should stay the same.
#     # ```
#     # OUTPUT: What is the id of the product do you wish to edit?
#     # INPUT: 1
#     # OUTPUT: What is 'KitKat Bar''s new name?
#     # INPUT: KitKat Super Bar
#     # OUTPUT: What is 'KitKat Bar''s new description?
#     # INPUT: 
#     # OUTPUT: What is 'KitKat Bar''s new price?
#     # INPUT: 
#     # OUTPUT: You updated KitKat Super Bar (#1), A delicious candy bar, that costs $2.50
#     # ```
    id = Validator.get_and_validate('What Is the id of the product you wish to edit?', {required: true})

    old_hash = $db.exec("SELECT * FROM #{$table_name} WHERE product_id = #{id}")[0]
    old_product_name = old_hash['product_name']
    old_product_price = old_hash['product_price']
    old_product_description = old_hash['product_description']
    old_product_quantity_in_stock = old_hash['product_quantity_in_stock']

    new_product_name = Validator.get_and_validate("What is '#{old_product_name}'/'s new name? (To leave data unchanged, hit enter.)" )
    new_product_price = Validator.get_and_validate("What is '#{old_product_name}'/'s new price? (To leave data unchanged, hit enter.)", {money: true})
    new_product_description = Validator.get_and_validate("What is '#{old_product_name}'/'s new description? (To leave data unchanged, hit enter.)")
    new_product_quantity_in_stock = Validator.get_and_validate("What is '#{old_product_name}'/'s new quantity_in_stock? (To leave data unchanged, hit enter.)", {positive_integer: true})
    puts "You are trying to change '#{old_product_name}'."

    if new_product_name.length > 0
      puts "You are changing #{old_product_name}'s product_name from #{old_product_name} to '#{new_product_name}'."
      $db.exec("UPDATE #{$table_name} SET product_name = '#{new_product_name}' WHERE product_id = #{id}")
    end

    if new_product_price.length > 0
      puts "You are changing #{old_product_name}'s product_price from #{old_product_price} to '#{new_product_price}'."
      $db.exec("UPDATE #{$table_name} SET product_price = '#{new_product_price}' WHERE product_id = #{id}")
    end

    if new_product_description.length > 0
      puts "You are changing #{old_product_name}'s product_description."
      puts "It was:"
      puts "#{old_product_description}"
      puts "It will soon be:"
      puts "#{new_product_description}"
      $db.exec("UPDATE #{$table_name} SET product_description = '#{new_product_description}' WHERE product_id = #{id}")
    end

    if new_product_quantity_in_stock.length > 0
      puts "You are attempting to change #{old_product_name}'s quantity_in_stock from #{old_product_quantity_in_stock} to '#{new_product_quantity_in_stock}'."
      puts "This is not the prefered method of changing inventory quantities. Please consider using (o)rder or (s)hip function from main menu."
      
      confirmation = Validator.get_and_validate("Are you sure you want manually change #{old_product_name}'s quantity?", {required: true, yes_or_no: true})
      if confirmation == true
        $db.exec("UPDATE #{$table_name} SET product_price = '#{new_product_price}' WHERE product_id = id")
      else
        puts "product quantity change canceled"
      end
    end
################# FIXFIXFIXFIX

  end

  def self.delete_product_record      
    # - A user should be able to ``delete`` products.  The result of which should also removing their row from the database.
    # ```
    # OUTPUT: What is the id of the product do you wish to delete?
    # INPUT: 1
    # OUTPUT: Do you really want to delete 'KitKat Bar'?
    # INPUT: yes
    # OUTPUT: You have deleted 'KitKat Bar'?
    id = Validator.get_and_validate('What is the id of the product do you wish to delete?', {required: true})

    ## DRY me
    old_hash = $db.exec("SELECT * FROM #{$table_name} WHERE product_id = #{id}")[0]
    old_product_name = old_hash['product_name']
    old_product_price = old_hash['product_price']
    old_product_description = old_hash['product_description']
    old_product_quantity_in_stock = old_hash['product_quantity_in_stock']

    confirmation = Validator.get_and_validate("Do you really want to delete '#{old_product_name}'?", {required: true, yes_or_no: true})
### FIX FIX FIX FIX
    if confirmation == true
      $db.exec("DELETE FROM #{$table_name} WHERE product_id = #{id}")
        # IF CONFIRM
          # puts "You have deleted '#{old_name}'
        # else
          # puts "ERROR type 11" # FIX
        # end
    elsif confirmation == false
      puts "Deletion canceled"
    else     
      puts "ERROR type 11" # FIX
    end
  end

  def self.order_product
    # - A user should be able to ``order`` products by incrementing the quantity of a given product by some number N
    # ```
    # OUTPUT: You have 40 KitKat Bars.  How many do you wish to order?.  
    # INPUT: 10.
    # OUTPUT: You have added 10 KitKat Bars and now have 50 KitKat Bars left. 
    # ```
    id = Validator.get_and_validate('What is the id of the product do you wish to order?', {required: true})
    
    ## DRY me
    old_hash = $db.exec("SELECT * FROM #{$table_name} WHERE product_id = #{id}")[0]
    old_product_name = old_hash['product_name']
    old_product_price = old_hash['product_price'].to_f
    old_product_description = old_hash['product_description']
    old_product_quantity_in_stock = old_hash['product_quantity_in_stock'].to_i

    number_to_order = Validator.get_and_validate("You have #{old_product_quantity_in_stock} #{old_product_name}(s).  How many do you wish to order?.", {required: true, positive_integer: true}).to_i
    new_product_quantity_in_stock = old_product_quantity_in_stock + number_to_order
    $db.exec("UPDATE #{$table_name} SET product_quantity_in_stock = '#{new_product_quantity_in_stock}' WHERE product_id = #{id}")
    # READ
    # puts "You have added #{number_to_order} #{old_name}(s) and now have #{product_quantity_in_stock}."
  end

  def self.ship_product
    # - A user should be able to ``ship`` products by decrementing the quantity of a given product by some number N
    # ```
    # OUTPUT: You have 50 KitKat Bars.  How many are you shipping?.  
    # INPUT: 20.
    # OUTPUT: You have sold 20 KitKat Bars  You now have 30 KitKat Bars left. 
    # ```
    # - A user should be able to ``delete`` products.  The result of which should also removing their row from the database.
    id = Validator.get_and_validate('What is the id of the product do you wish to ship?', {required: true})
    
    ## DRY me
    old_hash = $db.exec("SELECT * FROM #{$table_name} WHERE product_id = #{id}")[0]
    old_product_name = old_hash['product_name']
    old_product_price = old_hash['product_price'].to_f
    old_product_description = old_hash['product_description']
    old_product_quantity_in_stock = old_hash['product_quantity_in_stock'].to_i

    number_to_ship = Validator.get_and_validate("You have #{old_product_quantity_in_stock} #{old_product_name}(s).  How many do you wish to ship?.", {required: true, positive_integer: true}).to_i

    new_product_quantity_in_stock = old_product_quantity_in_stock - number_to_ship
    $db.exec("UPDATE #{$table_name} SET product_quantity_in_stock = '#{new_product_quantity_in_stock}' WHERE product_id = #{id}")
    # READ
    # puts "You have shipped #{number_to_shop} #{old_name}(s) and now have #{product_quantity_in_stock}."
  end

  def self.find
    # - A user should be able to ``search`` for a product by name or id:

    # ```
    # OUTPUT: Do you wish to search by 'id' or 'name'?
    # INPUT: name
    # OUTPUT: What your product called?
    # INPUT: KitKat Bar
    # OUTPUT: Here are all the products that matched your search:

    # | id | name      | price| description          | quantity 
    # |--------------------------------------------------------|
    # | 1 | KitKat Bar | 2.50 | A delicious candy bar|    0    |

    # ```
    search_type = Validator.get_and_validate("Do you wish to search by 'id' or 'name'?", {required: true})
############# FIX FIX    #VALIDATE
    if search_type == 'name'
      find_by_name()
    elsif search_type == 'id'
      find_by_id()
    else
      puts "ERROR type 11"
    end
  end

  def self.find_by_id
    input_id = Validator.get_and_validate("Find which product id?", {required: true})
    puts "Here are all the products that match your search:"
    
    ## DRY me
    old_hash = $db.exec("SELECT * FROM #{$table_name} WHERE product_id = #{input_id}")[0]
    old_product_name = old_hash['product_name']
    old_product_price = old_hash['product_price'].to_f
    old_product_description = old_hash['product_description']
    old_product_quantity_in_stock = old_hash['product_quantity_in_stock'].to_i

    #DISPLAY THE PRODUCTS
    keys_arr = old_hash.keys
    while keys_arr.empty? == false
      print keys_arr.pop
      print "       "
    end

    print "#{input_id}        #{old_product_name}       #{old_product_price}        #{old_product_description}        #{old_product_quantity_in_stock}"

  end

  def self.find_by_name
    input_name = Validator.get_and_validate("Find which product name?", {required: true})
    puts "Here are all the products that match your search:"

    ## DRY me
    old_hash = $db.exec("SELECT * FROM #{$table_name} WHERE product_name = #{input_name}")[0]
    old_product_name = old_hash['product_name']
    old_product_price = old_hash['product_price'].to_f
    old_product_description = old_hash['product_description']
    old_product_quantity_in_stock = old_hash['product_quantity_in_stock'].to_i

    keys_arr = old_hash.keys
    while keys_arr.empty? == false
      print keys_arr.pop
      print "       "
    end

        print "#{input_id}        #{old_product_name}       #{old_product_price}        #{old_product_description}        #{old_product_quantity_in_stock}"

  end

  def self.browse
    database_hash = $db.exec("SELECT * FROM #{$table_name}")
      # result.each do |listing|
        # listing.each do |k, v|
          # puts "#{k}: #{v}"
        # end
      # end

    keys_arr = database_hash.keys
    while keys_arr.empty? == false
      print keys_arr.pop
      print "       "
    end
    puts ""
    
    database_hash.each do |element|
      record.each do |k, v|
        print v
        print "       "  
      end
    end


  end   
end
