require 'pg'

@conn = PG.connect(dbname: 'amazone_db')

# INSERT/CREATE INTO amazone (id, product, price, description, quantity) VALUES ();
def add_product(product, price, description, quantity)
  @conn.exec("INSERT INTO amazone (product, price, description, quantity) VALUES ('#{product}', '#{price}', '#{description}', '#{quantity}');")
end

# SELECT * FROM amazone;
def display_amazone
  all_amazone = @conn.exec("SELECT * FROM amazone;")
  all_amazone.each do |product|
    product.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end

# SELECT * FROM amazone WHERE product = '';
# def search(id, product)
#   result= @conn.exec("SELECT * FROM amazone WHERE #{id} = '#{product}';")
#   result.each do |product|
#     product.each do |k, v|
#       puts "#{k}: #{v}"
#     end
#   end
# end

# UPDATE students SET first_product = '' WHERE id = '';

# def update(product, price, description)
#   @conn.exec("UPDATE amazone SET #{category} = '#{query_term}' WHERE id = '#{id}';")
#   puts "Your record has been updated"
# end

# A user should be able to order amazone by incrementing the quantity of a given product by some number N

# A user should be able to ship amazone by decrementing the quantity of a given product by some number N

# A user should be able to delete amazone. The result of which should also removing their row from the database.

# DELETE FROM amazone WHERE id = '';

# def delete(id)
#   @conn.exec("DELETE FROM amazone WHERE id = '#{id}';")
#   puts "Your product has been deleted"
# end
