#===================================================================================
#TESTING FUNCTIONS HERE:

# result = @conn.exec("SELECT * FROM products WHERE id = '3';")

# result.each do |key|
#   key.each do |k, v|
#     puts v
#   end
# end
   #v is the value of the final array

#result.values =>
#[
#   [0] [
#   [0] "3", [1] "Chocolate", [2] "0", [3] "Ritz chocolate", [4] nil
#   ]
# ]

#Display testing:
# result = @conn.exec("SELECT * FROM pg_stat_activity") do |result|
#     puts "| id | name      | price | description          | quantity
# |---------------------------------------------------------|"
# n = array.length
# while index <= n
#   index = 1
#   puts(toc[index].ljust(line_width/2))
#   index += 1
#   print(toc[index].ljust(line_width/2))
#   index +=1
#   print(toc[index].rjust(line_width/2))
#   index +=1
#   print(toc[index].rjust(line_width/2))
# end

#           result.each do |row|
#             puts " %s" %
#             row.values_at("id", "prod_name", "price", "description", "quantity")
#   end
# end
