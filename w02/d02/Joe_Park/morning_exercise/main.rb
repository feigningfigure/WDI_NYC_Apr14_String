require_relative 'classes/mailbox'
require_relative 'classes/postcard'

mailbox1 = Mailbox.new
sender1 = Postcard.new("I love you!", "111 Home NY")


p sender1.to_s
p mailbox1.to_s
p mailbox1.accept_postcard(sender1)
p mailbox1
p mailbox1.to_s
