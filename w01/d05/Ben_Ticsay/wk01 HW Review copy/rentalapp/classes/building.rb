class Building


  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floor, :apartment

  def initialize(address, style, has_doorman, is_walkup, num_floor, apartment)
      @address = address
      @style = style
      @has_doorman = has_doorman
      @is_walkup = is_walkup
      @num_floor = num_floor
      @apartment = {}
   end

   def to_s


   
   	puts "This building is located at #{@address}. It is built in #{@style}. #{has_doorman} #{@is_walkup} #{@num_floor} and contains #{@apartment}"

   end


 end