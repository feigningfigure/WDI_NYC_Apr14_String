class Postcard

    attr_accessor :address, :message

     def initialize(address, message)
      @address = address
      @message = message
     end

    def to_s
      puts "Hello World! #{@message} is being sent to #{@address}"
    end

end

class Mailbox

    def initialize:
      @postcards = []
      @number = number
    end

    def accept_postcard(mail_item)
      @postcards << mail_item
    end

    def to_s
      puts "There are #{@postcards.count} postcards in this mailbox"
    end

end
