require_relative 'post_card'
require_relative 'mailbox'

def menu
puts "Please enter your friend's name."
sendee = gets.chomp
puts "Please enter your friend's address."
ship_to_address = gets.chomp
puts "Please enter your name."
sender = gets.chomp
puts "Your postcard is being sent to #{postcard.ship_to_address}"

end

#seed file
postcard = Postcard.new ("41 Union Square", "Hello World!")
mailbox =Mailbox.new
mailbox.to_s
mailbox.accept_postcard(postcard)
mailbox.to_s #there's 1 postcard in the postcards array
