class Postcard

  attr_accessor :ship_to_addess, :message

    def initialize(ship_to_addess, message)
      @ship_to_addess = ship_to_addess
      @message = message
    end

    def to_s
      puts "The message #{@message} is being sent to #{@ship_to_addess}."
    end
end


class Mailbox

  def initialize
    @postcards = []
  end

  def accept_postcard(mail_item)
    @postcards << mail_item

  end

  def to_s
    "There are #{@postcards.count} postcards in this mailbox."
  end


#   def to_s

# "The mailbox has #{postcard_objects.length} postcards."
# end

end

