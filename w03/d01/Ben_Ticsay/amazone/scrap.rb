
#CREATE
	puts "What is your product called?"
	name = gets.chomp
	puts "What is its price?"
	price = gets.chomp
	puts "What is the description of your product?"
	description = gets.chomp

#SEARCH
	puts "Do you wish to search by 'id' or 'name'?"
	search_type = gets.chomp
	puts "What is your product id/name?"
	search_item = gets.chomp
	puts "Here are all the products that matched your search:"

#UPDATE
puts "What is the id of the product you wish to edit?"
update_id = gets.chomp
puts "What is the product's new name?"
new_name = gets.chomp
puts "What is the product's new description?"
new_description = gets.chomp 
puts "What is the prodcut's new price?"
new_price = gets.chomp


puts "You updated #{new_name} #{update_id}, #{new_description}, that costs $#{new_price}"


#ORDER
puts "What is the id of the product you wish to order?"
order_id = gets.chomp
puts "You have 40 KitKat Bars. How many do you wish to order?." 
order_number = gets.chomp
puts "You have added 10 KitKat Bars and now have 50 KitKat Bars left." 


#SHIP

puts "You have #{quantity} #{name}. How many are you shipping?."  
ship_quantity = gets.chomp
puts "You have sold #{ship_quantity} #{name}. You now have #{post_ship_quant} #{name} left."


#DELETE
puts "What is the id of the product do you wish to delete?"
delete_id = gets.chomp
puts "Do you really want to delete 'KitKat Bar'?"
confirm_del = gets.chomp
puts "You have deleted #{name}"

# # UPDATE table1 
# #    SET col1 = othertable.col2,
# #        col2 = othertable.col3 
# #   FROM othertable 
# #  WHERE othertable.col1 = 123;



