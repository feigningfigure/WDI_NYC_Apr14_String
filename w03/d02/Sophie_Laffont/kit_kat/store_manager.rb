require 'pg'

@conn = PG.connect(dbname: 'amazone_db')


#1 CREATE NEW PRODUCT
def create(product, price, description, quantity)
	@conn.exec("INSERT INTO amazone (product, price, description, quantity) VALUES ('#{product}', '#{price}', '#{description}', '#{quantity}');")
	puts "I added your product to the table."
end

# 2. SEARCH FOR A PRODUCT
#{category} = '#{query_term}' WHERE id = '#{id}';"
def search(category, query_term)
	result = @conn.exec("SELECT * FROM amazone WHERE '#{category}'' = '#{query_term}';")
	result.each do |item|
		item.each do |k, v|
			puts "#{k}: #{v}"
		end		
	end
end


#3. UPDATE PRODUCT
def update(product, price,description)
  @conn.exec("UPDATE products SET #{product} #{price}, #{description} = '#{query_term}' WHERE id = '#{id}';")
  puts "UPDATED"
end

#4. ORDER PRODUCT - ADDITION
def order(id, quantity_number)
  @conn.exec("UPDATE products SET #{product} = '#{query_term}' WHERE id = '#{id}';")
  #{quantity} =
  #{n}=
  puts   "ADDITION"
end


#5. SHIP PRODUCT. SUBSTRACTION
def ship(id, ship_number)
  @conn.exec("DELETE FROM products WHERE id = '#{id}';")
  puts "SUBSTRACTION"
end

# 6. DELETE - REMOVE PRODUCT
def delete(id, query_term)
  @conn.exec("DELETE FROM products WHERE id = '#{id}';")
  puts "DELETE"
end


