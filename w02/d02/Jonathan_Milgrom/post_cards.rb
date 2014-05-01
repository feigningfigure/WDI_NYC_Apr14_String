require_relative 'postcars_class'
require_relative 'mailbox_class'

postcard_1 = Postcard.new
postcard_1.ship_to_address = "171 memory lane"
postcard_1.message = "hey dude"
postcard_1.to_s

mailbox_1 = Mailbox.new
mailbox_1.accept_postcard(postcard_1)

mailbox_1.to_s