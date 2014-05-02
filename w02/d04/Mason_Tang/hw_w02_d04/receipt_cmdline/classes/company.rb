class Company

  attr_accessor :name, :receipt


  def initialize(name)
    @name = name
    @receipts = []

  end


  def display_receipt
    puts @receipts

  end

  def to_s
    "Company Name: #{@name} \n
    Good/Service Provided: #{@receipts[0].join} \n
    Cost: #{@receipts[0]} \n
    Thank you for your patronage"
    end

end
