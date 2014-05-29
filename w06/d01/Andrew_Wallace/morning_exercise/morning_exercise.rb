class Soldier
  attr_accessor :first, :last

  def initialize(first, last)
    @first, @last = first, last
  end

end

soliders = []
soliders << Solider.new("Alvin", "York")
soliders << Solider.new("Nina", "Price")
soliders << Solider.new("Percy", "Pinkerton")
soliders << Solider.new("Abigail", "Brand")

solider.each { |s| puts s.last }

soldiers.select { |s| s.last_name ==  "Price" }

soldiers.map { |s| s.last_name }
