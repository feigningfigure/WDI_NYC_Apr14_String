require_relative 'mailbox'

class Postcard

  attr_accessor :ship_to_addess, :message,

    def initialize(ship_to_addess, message)
      @ship_to_addess = ship_to_addess
      @message = message
    end

    def to_s
      puts "The message #{@message} is being sent to #{@ship_to_addess}."
    end

end
# Postcard.new(41 Union Square W New York, NY 10003)
