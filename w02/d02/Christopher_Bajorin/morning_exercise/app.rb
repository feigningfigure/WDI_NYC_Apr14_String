require_relative 'mailbox'
require_relative 'postcard'

  $mailbox = Mailbox.new

def app

  if $mailbox.postcard_array.count < 10
    puts "where are you sending this?"
    address = gets.chomp
    puts "what is the message?\n"
    message = gets.chomp
    new_postcard = Postcard.new(address, message)
    puts new_postcard.to_s
    $mailbox.accept_postcard(new_postcard)
    app
  else
    puts $mailbox

  end
end

app

