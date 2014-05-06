
# ###Week03-Day01
# =======

# #WORK IN YOUR OWN FOLDER ONLY!
# #Your pull-request title must start with `hw_w03_submission`

# ##Morning Exercise:

# ##Part 1 - AmaZone Store

# It's 1990-something and you are appointed as the manager of AmaZone, a low-tech, brick-and-mortar store and tasked with building a backend ``command-line`` tool in Ruby for managing the product inventory.  

# The owner has not heard of the web and demands that you do this on the command-line so he can run it on his Unix machine ala:

# ```
# $ ruby store_manager.rb
# ```



# ####Requirements

# The "products" table should have the following ``schema``

# ###products
# | id | name | price | description | quantity |
# |----|-----|------|----|----|
# | serial | varchar(255) | decimal | text | integer |

# Your application should implement the following user stories:

# - A user should be able to ``create`` new products using a command-line interface.

# ```
# OUTPUT: What is your product called?
# INPUT: KitKat Bar
# OUTPUT: What is its price?
# INPUT: 2.50
# OUTPUT: What is the description of your product?
# INPUT: A delicious candy bar
# OUTPUT: You created KitKat Bar (#1), A delicious candy bar, that costs $2.50
# ```

# - A user should be able to ``search`` for a product by name or id:

# ```
# OUTPUT: Do you wish to search by 'id' or 'name'?
# INPUT: name
# OUTPUT: What your product called?
# INPUT: KitKat Bar
# OUTPUT: Here are all the products that matched your search:

# | id | name      | price| description          | quantity 
# |--------------------------------------------------------|
# | 1 | KitKat Bar | 2.50 | A delicious candy bar|    0    |

# ```


# - A user should be able to``update`` the name, price and description of a product **without** updating it's quantity at the same time.  
# - If a user leaves the responses blank, they should stay the same.

# ```
# OUTPUT: What is the id of the product do you wish to edit?
# INPUT: 1
# OUTPUT: What is 'KitKat Bar''s new name?
# INPUT: KitKat Super Bar
# OUTPUT: What is 'KitKat Bar''s new description?
# INPUT: 
# OUTPUT: What is 'KitKat Bar''s new price?
# INPUT: 
# OUTPUT: You updated KitKat Super Bar (#1), A delicious candy bar, that costs $2.50
# ```

# - A user should be able to ``order`` products by incrementing the quantity of a given product by some number N
	
# ```
# OUTPUT: You have 40 KitKat Bars.  How many do you wish to order?.  
# INPUT: 10.
# OUTPUT: You have added 10 KitKat Bars and now have 50 KitKat Bars left. 
# ```

# - A user should be able to ``ship`` products by decrementing the quantity of a given product by some number N
	
# ```
# OUTPUT: You have 50 KitKat Bars.  How many are you shipping?.  
# INPUT: 20.
# OUTPUT: You have sold 20 KitKat Bars  You now have 30 KitKat Bars left. 
# ```
# - A user should be able to ``delete`` products.  The result of which should also removing their row from the database.

# ```
# OUTPUT: What is the id of the product do you wish to delete?
# INPUT: 1
# OUTPUT: Do you really want to delete 'KitKat Bar'?
# INPUT: yes
# OUTPUT: You have deleted 'KitKat Bar'?
# ```








require 'bundler'
Bundler.require

require_relative 'classes/classes.rb'


##### CONFIG
$db_name = 'store_manager_db'
$db = PG.connect(dbname: "#{$db_name}")

$table_name = 'inventory_table'

Ui.go()

###### SETUP 
                                        #TODO - this should only run if table = false

# Setuper.create_table($table_name)




