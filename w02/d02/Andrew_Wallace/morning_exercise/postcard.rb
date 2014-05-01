class Postcard
  attr_accessor :ship_to_address, :message

  def initialize(ship_to_address, message)
    @ship_to_address = ship_to_address
    @message = message

    def to_s
      "The message '#{@message}' is being sent to '#{@ship_to_address}'"
    end

  end
end

class Mailbox
  attr_accessor :postcards, :mailbox

  def initialize
    @postcards = []
  end

  def accept_postcards(mail_item)
    @postcards << mail_item
  end

  def to_s
    "The mailbox has #{@postcards.count} postcards in this mailbox."
  end

end
