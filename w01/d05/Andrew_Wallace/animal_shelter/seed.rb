require_relative "./classes/person.rb"
require_relative "./classes/animal.rb"
require_relative "./classes/shelter.rb"
require_relative "./app.rb"

@beth = Person.new("Beth", 30, "female", 3)
@george = Person.new("George", 26, "male", 0)

@tiny = Animal.new("Tiny", 3, "male", "cat")
@tiny.toys << "catnip"
@freddie = Animal.new("Freddie", 10, "male", "dog")
@freddie.toys << "bones"
@slimer = Animal.new("Slimer", 7, "female", "snake")
@slimer.toys << "mice"

@shelter = Shelter.new('HappiTails', '10 East 21st Street')

@shelter.clients[@george.name.to_sym] = @george
@shelter.clients[@beth.name.to_sym] = @beth

@shelter.animals[@tiny.name.to_sym] = @tiny
@shelter.animals[@freddie.name.to_sym] = @freddie
@shelter.animals[@slimer.name.to_sym] = @slimer
