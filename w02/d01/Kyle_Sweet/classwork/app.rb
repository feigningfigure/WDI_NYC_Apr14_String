require_relative 'atm.rb'
require_relative 'client.rb'
require_relative 'accounts.rb'



print "What is your name?"
user=gets.chomp
user=Client.new
puts "welcome #{@user}, your account balance is #{@balance}"

end
