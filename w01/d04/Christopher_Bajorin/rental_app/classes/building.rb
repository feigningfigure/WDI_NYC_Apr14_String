class Building

  attr_accessor :address, :style, :door, :walk, :floors, :apt

  def initialize(add=nil,style=nil,walk=false,door=false)
    @address = add
    @style = style
    @door = door
    @walk = walk
    @floors = 0
    @apt = []
  end

  def to_s
    if @walk == false && @door == false
      puts "#{@address} is a #{@style} building with an elevator and no doorman"
    elsif @walk == true && @door == false
      puts "#{@address} is a #{@style} walkup without a doorman"
    elsif @walk == true && @door == true
      puts "#{@address} is a #{@style} walkup with a doorman"
    elsif @walk == false && @door == true
      puts "#{@address} is a #{@style} building with an elevator and a doorman"
    end
  end

end
