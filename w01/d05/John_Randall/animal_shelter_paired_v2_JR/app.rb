require_relative "./classes/client.rb"
require_relative "./classes/animal.rb"
require_relative "./classes/shelter.rb"
require_relative "./classes/ui.rb"
# load "./seed.rb"

##Part 2
# - In an `app.rb` file, create user prompts to facilitate
#   - ...client adopting an animal. This means the client now has the animal and they should no longer be a part of the shelter.
#   - ...client puts an animal up for adoption. This means the client no longer has the animal and it should be added to the shelter.

###Here is some starter:




### STARTER CODE THAT DOESN'T MAKE SENSE
# response = menu
# while response != "Q"
#   response = menu
# end
#####



### SEED

shelter001 = Shelter.new('HappiTails', '10 East 21st Street')

client001 = Client.new('Beth', 30)

animal001 = Animal.new("Tiny", "cat", 3)
animal001.toys << "mice"
animal001.toys << "yarn"

# animal002 = Animal.new["Smalls", "dog", 15]

shelter001.clients["nohna"] = Object.new
shelter001.clients["wina"] = Object.new
shelter001.display_all_clients

# shelter001.animals["Tiny"] = animal001
# shelter001.animals["Smalls"] = animal002
# shelter001.animals["Spot"] = Animal.new["Spot", "puppy", 1]


ui001 = Ui.new(shelter001)

ui001.display_menu







