class Soldier
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name, @last_name = first_name, last_name
  end

  # def self.last_name
  #   "#{@last_name}"
  # end
end


soldiers = ["Alvin York","Nina Price", "Percey Pinkerton", "Abigail Brand"]

@ready_soldiers = []

soldiers.each do |soldier|
  names = soldier.split
  @ready_soldiers << Soldier.new(names[0],names[1])
end

@s_last_name = @ready_soldiers.select do |s| s.last_name. == "Price" end

@ready_soldiers.each do |soldier| puts soldier.last_name.to_s end

only_last_names = @ready_soldiers.map {|s| s.last_name}

# map accomplishes this

# def last_names
#   last_names = []
#   @ready_soldiers.each do |soldier|
#     last_names << soldier.last_name.to_s
#   end
#   last_names
# end


# BONUS
longest = only_last_names.inject do |memo, word|
   memo.length > word.length ? memo : word
end
