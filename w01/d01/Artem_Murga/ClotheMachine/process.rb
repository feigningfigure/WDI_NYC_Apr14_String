require 'clothe_machine.rb'
require 'wardrobe.rb'
require 'clothe_god.rb'

machine = ClotheMachine.new
item1 = ClotheGod.new("t-shirt", "blue")
item2 = ClotheGod.new("t-shirt", "green")
item3 = ClotheGod.new("pants", "black")
item4 = ClotheGod.new("t-shirt", "red")
item5 = ClotheGod.new("hat", "white")


machine.scanner(item1)
machine.scanner(item2)
machine.scanner(item3)
machine.scanner(item4)
machine.scanner(item5)

