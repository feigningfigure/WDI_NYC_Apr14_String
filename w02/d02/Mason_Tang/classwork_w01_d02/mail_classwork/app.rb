require_relative 'mailbox'
require_relative 'postcard'


usps = Mailbox.new

puts "Message?"
message = gets.chomp

puts "Address?"
address = gets.chomp

postcard = Postcard.new(message, address)
usps.accept_postcard(postcard)

usps.to_s
postcard.to_s
