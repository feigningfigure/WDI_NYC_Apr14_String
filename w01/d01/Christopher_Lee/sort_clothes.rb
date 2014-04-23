# scanner will need to look through the shirts
# mover will need to get the shirts where they need to be
# mover
# scanner
# sorting bins
# 1) ruffle through the shirts
# 2) point the scanner at the shirts
# 3) sort the shirts based on their color
# 4) place them (mover moves, scanner places)
# mover and scanner are going to have to work together

load './closet_machine.rb'
load './scanner.rb'
load './mover.rb'
load './closet.rb'
load './floor.rb'
load './room.rb'

closet_machine = Closet_machine.new
closet = Closet.new
floor = Floor.new
mover = Mover.new
scanner = Scanner.new
room = Room.new

# scanner searches for a bed
if scanner.find_bed(@@room_objects)
  # mover grabs all of the clothing on the bed
    mover.grab_multiple_items(@@clothing)
  # mover drops all of the items in the main bin of closet_machine
    mover.move_item(@@clothing, @@main_bin)

  # scanner goes through each item and mover sorts the items according to the criterion
    @@main_bin.each do |item|
        if scanner.scan_type(item) == "Green Shirt"
          mover.move_item(item, @@top_shelf)
        elsif scanner.scan_type(item) == "Blue Shirt"
          mover.move_item(item, @@middle_shelf)
        elsif scanner.scan_type(item) == "Pants"
          mover.move_item(item, @@bottom_shelf)
        else
          mover.move_item(item, floor)
        end
    end
  else
    # if there isn't a bed, the machine lets you know that
    closet_machine.puts "there ain't no bed in here"
end
