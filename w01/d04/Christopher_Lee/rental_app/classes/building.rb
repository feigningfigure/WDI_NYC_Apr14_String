class Building
  def initialize
    puts "What is the address of your building?"
    @address = gets.chomp
    puts "What style is your building?"
    @style = gets.chomp
    puts "Does your building have a doorman (Y/N)?"
      has_doorman = gets.chomp
      case has_doorman
        when "Y"
          @has_doorman = true
        when "N"
          @has_doorman = false
      end
    puts "Is your building a walkup (Y/N)?"
      is_walkup = gets.chomp
      case is_walkup
        when "Y"
          @is_walkup = true
        when "N"
          @is_walkup = false
      end
    puts "How many floors does your building have?"
    @num_floors = gets.chomp.to_i
    puts "Please list the apartments in your building (comma separated)"
    @apartments = gets.chomp.gsub(/\s+/, "").split(",")
  end

  def to_s
    puts "Welcome to #{@address}, a #{@num_floors} floor building containing #{@apartments.length} apartments. #{@address} #{@is_walkup ? 'is a walkup' : 'was'} built in the #{@style} style. We #{'do not ' unless @has_doorman}have a doorman."
  end

end

House = Building.new

House.to_s

# 3716 park ave s

# 10C, 11C, 12C, 1B, 2B, 3B



