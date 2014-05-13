require 'pg'
require 'pry'

@connect = PG.connect(dbname: 'webvan')



def display_products
  all_products = @connect.exec("SELECT * FROM products;")



  all_products.each do |x|
     print x
     print "\n"
  end
  end
