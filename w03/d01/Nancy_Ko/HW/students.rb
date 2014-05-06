require 'pry'
require 'pg'

class Amazone

@conn = PG.connect(dbname:'db_store_products')
def initialize(name, price, description, quanitity)
	@name = name 
	@price = price
	@description = description
	@quanitity = quanitity
end 

def create
	@conn.exec("INSERT INTO products(name, price, description, quanitity) VALUES ('#{name}, #{price}, #{description}, #{quanitity}')")
end

def display_items
	all_products = @conn.exec("SELECT * FROM products;")
	products.each do |product| 
		product.each do |k,v|
			puts "#{k}: #{v}"
		end
	end
end

puts "What is your product called?"
name = gets.chomp
puts "What is its price?"
price = gets.chomp.to_f
puts "What is the description of your product?"
description = gets.chomp
puts "You created '#{name},'' '#{description},'' that costs '#{price}'."
amazone = Amazone.new("#{name}, #{price}, #{description}, #{quanitity}")
amazone.create
amazone.display_items


# def search 
# 	@conn.exec(SELECT * FROM name  WHERE name  = '#{name}'
		
# end 

# prints "Do you wish to search by 'name'?"
# search_by_name = gets.chomp
# prints "What's your product called?"
# name = gets.chomp
# prints "Here are the products that matched your search: "


# def update(query_term)
# 	@conn.exec("UPDATE products SET #{category} WHERE #{query_term} = '#{query_term}';")
# end 

# def delete 
# 	@conn.exec("DELETE FROM products WHERE column name = '#{value}'';")
# end


end


