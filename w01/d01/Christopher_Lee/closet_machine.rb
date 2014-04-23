load './scanner.rb'
load './mover.rb'

class Closet_machine
  def initialize
    @@main_bin = []
    @@claw = []
  end
end


# class Mover
#     def grab_single_item(array)
#       single = array[0]
#       @@claw.push(single)
#     end

#     def grab_multiple_items(array)
#       array.each do |item|
#         @@claw.push(item)
#       end
#     end

#     def move_item(item, destination)
#       @@claw.push(item)
#       destination.push(@@claw)
#       @@claw = []
#     end

    #  def load_sort_and_stack(*clothes)
    #     mover.grab_multiple_items(clothes)
    #     move_item(clothes, @@main_bin)
    #     @@main_bin.each do |item|
    #       if scan_type(item) == "Green Shirt"
    #         move_item(item, @@top_shelf)
    #       elsif scan_type(item) == "Blue Shirt"
    #         move_item(item, @@middle_shelf)
    #       elsif scan_type(item) == "Pants"
    #         move_item(item, )

    #       end
    #     end
    # end

