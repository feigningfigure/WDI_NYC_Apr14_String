require 'pg'
require 'pry'

@conn = PG.connect(dbname: 'amazone_db')

#INSERT INTO products(id,name, description, quantity) VALUES();

def add_product(id, name, description, quantity)
	Puts "What is the name of your product?"
	@name = name
	Puts "What is the price of your product?"
	@price = price
	Puts "What is a description of your product"
	@description = description
@conn.exec("INSERT INTO products(id, name, description, quantity) VALUES ('#{id}', '#{name}', '#{description}', '#{quantity}');")
end

# SELECT * FROM products
def display_products
	all_products = @conn.exec ("SELECT * FROM product;")
	all_products.each do |product|
	puts "#{k}: #{v}"
	end
end


def search(id, name)
	result = @conn.exec("SELECT * FROM product WHERE #{id} = '#{name}';")
	result.each do |product|
		product.each do |k, v|
			puts "#{k}: #{v}"
		end		
	end
end


#UPDATE students SET first_name = '' WHERE id = '';

#def update(first_name, id)
#@conn.exec ("UPDATE students SET first_name = '#{first_name}' WHERE id = '#{id}';")
#end

#DELETE FROM students WHERE id = ''
def delete(name)
@comm.exec ("DELETE FROM products WHERE name = '#{name}';")
puts "You Have Deleted '#{name}'"
end


