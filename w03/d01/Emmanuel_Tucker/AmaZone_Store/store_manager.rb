require 'pg'
require 'pry'


@conn = PG.connect(dbname: 'amazon_da_store_db')

def  add_amazon_da_store(product_name, price DECIMAL, description, quantity)
   result   = @conn.exec("CREATE * FROM amazon_da_store (product_name, price DECIMAL, description, quantity) VALUES ('#{product_name}','#{price DECIMAL}','#{description}','#{quantity}');")
     puts What is the product that you are interested in?
          result = get.chomp
     puts what is the price of this item?
          result = get.chomp.to_i
          puts
end

def display_amazon_da_stores
     all_amazon_da_store = @conn.exec("SELECT * FROM amazon_da_stores;")
     all_amazon_da_store.each do |amazon_da_store|
     all_amazon_da_store.each do |k, v|
          puts "#{k}: #{v}"

          end
      end
 end

 def search (category, query_term)
result = @conn.exec("SELECT * FROM da_schema WHERE #{category} = #{query_term}';")
result.each do |da_schema|
     da_schema.each do |'#{category}' '#{query_term}'|
     puts what to search by '#{category}:' '#{query_term}'?
          result = get.chomp
     puts "what your product called?"
          result = get.chomp
     puts "Here are all the products that matched your search"

          end
     end
end

def update
     @conn.exec("UPDATE da_schema SET #{category} = '#{query_term}' WHERE id = '#{id}';")
     puts what product would you like to edit?
      result = get.chomp
      puts what 'candybar' news name?
      result = get.chomp
      puts
     end


def ship (category, query_term, id)
     end


def order
puts "how many candy bar would you like to use order?"
 result = get.chomp.to_i

end



#  OUTPUT: What is your product called?
# INPUT: KitKat Bar
# OUTPUT: What is its price?
# INPUT: 2.50
# OUTPUT: What is the description of your product?
# INPUT: A delicious candy bar
# OUTPUT: You created KitKat Bar (#1), A delicious candy bar, that costs $2.

