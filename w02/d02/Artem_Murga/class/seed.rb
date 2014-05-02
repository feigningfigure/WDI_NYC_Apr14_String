require_relative 'morning_exercise'

postcard = Postcard.new("Union Square", "Hi!")
mailbox = Mailbox.new


p mailbox.accept_postcard(postcard)
p mailbox
p mailbox.array