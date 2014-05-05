require 'pg'

@conn = PG.connect(dbname: 'products_db')

# INSERT INTO products (id, name, price, description, quantity) VALUES ();
