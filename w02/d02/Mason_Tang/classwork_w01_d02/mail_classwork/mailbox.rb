class Mailbox

  attr_accessor :postcards

  def initialize
    @postcards = []
  end

  def accept_postcard(postcard)
    @postcards << postcard

  end




  def to_s
    puts "The mailbox has #{@postcards.count} postcards"

  end


end
