class Generator

  attr_accessor :service_name, :service_cost

  def initialize(service_name, service_cost)
    puts "What was the service provided?"
    @service_name = gets.chomp
    puts "How much did it cost?"
    @service_cost = service_cost.to_s

end


end

def to_s
  "Company Name: Particular Assembly Inc. Good/Service prodided: #{service_name}, Cost: #{service_cost}"
end

Generator.new(massage, 100)
