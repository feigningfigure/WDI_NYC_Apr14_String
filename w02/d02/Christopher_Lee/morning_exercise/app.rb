require_relative 'postcard'
require_relative 'mailbox'

mailbox = Mailbox.new

card1 = Postcard.new('2247 West Bromshire Rd.','Hi mom its me your son. Wish you were here in Monaco')
puts card1.to_s

card2 = Postcard.new('6521 24th Ave NE','Welcome to Jamrock')
puts card2.to_s

puts mailbox.to_s

mailbox.accept_postcard(@card1)
mailbox.accept_postcard(@card2)

puts mailbox.to_s
