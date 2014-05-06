require 'pg'
require 'pry'
require_relative './helper_file.rb'

@conn = PG.connect(dbname: 'amazone_products_db')






def program 

	program_input

	case @user_input
	when "c"
		puts "What is your product called?"
			name = gets.chomp
		puts "What is its price?"
			price = gets.chomp
		puts "What is the description of your product?"
			description = gets.chomp

		add_product(name, price, description)

		new_product_id = select_all_products[length_count]["id"]

		print_new_product_hash(new_product_id)

	when "s"
		puts "Do you wish to search by 'id' or 'name'?"
		name_or_id = gets.chomp.downcase
		result = 
			if name_or_id == "name"
				puts "What your product called?"
				name = gets.chomp.downcase
			else
				puts "What is the product's ID number?"
				id = gets.chomp
			end
		
		product_hash = product_hash(name_or_id, result)
		pretty_hash_print(product_hash)

	when "u"
		puts "here is a list of the current products \n"

		display_products_database

		puts "What is the id of the product that you wish to edit?"
			id = gets.chomp
			product_hash = product_hash_with_id(id)
		puts "What is #{product_hash["name"]}'s new name?"
			new_name = gets.chomp
			unless new_name == "" then update("name", new_name, id) end
		puts "What is #{product_hash["description"]}'s new description?"
			new_description = gets.chomp
			unless new_description == "" then update("description", new_description, id) end
		puts "What is #{product_hash["price"]}'s new price?"
			new_price = gets.chomp
			unless new_price == "" then update("price", new_price, id) end
		
		print_new_product_hash(id)

	when "o"
		puts "here is a list of the current products \n"

		display_products_database

		puts "What is the id of the product that you wish to order?"
			id = gets.chomp
			product_hash = product_hash_with_id(id)
		puts "Current quantity of #{product_hash["name"]}: #{product_hash["quantity"]}. \nHow many items of #{product_hash["name"]} do you wish to order?"
			quantity = gets.chomp.to_i

		update("quantity", quantity, id)

		print_new_quantity(id)

	when "sh" 

		puts "here is a list of the current products \n"

		display_products_database

		puts "What is the id of the product that you wish to ship?"
			id = gets.chomp
			product_hash = product_hash_with_id(id)
		puts "Current quantity of #{product_hash["name"]}: #{product_hash["quantity"]}. \nHow many items of #{product_hash["name"]} do you wish to ship?"
			quantity = gets.chomp.to_i

		new_quantity = product_hash["quantity"] - quantity	
		update("quantity", new_quantity, id)

		print_new_quantity(id)

		puts "you have shipped #{quantity} items of #{product_hash["name"]}"

	when "d"
	when "q"
		return "you have quit the program"
	
	else
		puts "Please try again"
	end

	program 
end


program





