class Soldier
  # attr_accessor :last_name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def print_last
    print @last_name
  end
end

full_names = ["Alvin York", "Nina Price", "Percy Pinkerton", "Abigail Brand"]
soldiers = []

full_names.each do |full_name|
  name = full_name.split(" ")
  first_name = name.first
  last_name = name.last
  soldiers << Soldier.new(first_name, last_name)
end

lasts = []
def last_array
  soldiers.each do |soldier|
    lasts << soldier.last_name
  end
  return lasts
end

price_array = []
def full_price
  soldiers.each do |soldier|
    if soldier.last_name == "Price"
      price_array << soldier.last_name
    else
      nil
    end
  end
end

def longest

end
