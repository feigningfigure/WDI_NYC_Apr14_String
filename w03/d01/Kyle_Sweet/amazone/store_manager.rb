require 'pg'

@products = PG.connect(dbname: 'acme')

# INSERT INTO acme_shop (name, price, description, quantity) VALUES ();

def create(name, price, description, quantity)
  @products.exec("INSERT INTO acme_shop (name, price, description, quantity) VALUES ('#{name}','#{price}','#{description}','#{quantity}');")
  print "You created #{name} (#{id}), #{description}, that costs $#{price}"
end


def search(category, query_term)
  result = @products.exec("SELECT * FROM acme_shop WHERE #{category} = '#{query_term}';")
  results.each do |candy|
    candy.each do |k,v|
      puts "#{k}: #{v}"
    end
  end
end

def update
end

def order
end

def ship
end

def delete
end


  # puts "Please enter a name:"
  # name=gets.chomp
  # puts "Please enter a price:"
  # price=gets.chomp.to_i
  # puts "please enter a description"
  # description=gets.chomp
  # puts "please enter a quantity"
  # quantity = gets.chomp
  # create
