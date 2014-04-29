class Mailbox

  attr_accessor :postcards,

  def initialize
    @postcards=[]
  end

  def accept_postcard(mail_item)
    @postcards << mail_item
  end

  def to_s
    puts "The mailbox has #{@postcards.length} postcards in this mailbox."
  end
end
