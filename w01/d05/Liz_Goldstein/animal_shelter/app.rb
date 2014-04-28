require_relative 'classes/animal'
require_relative 'classes/shelter'
require_relative 'classes/client'


@happitails = Shelter.new("HappiTails", "89th & bway")
lizzy = Client.new("lizzy", 33)
sara = Client.new("Sara", 26)
frisky = Animal.new("Frisky", 4, "cat")
fluffy = Animal.new("Fluffy", 20, "turtle")
lizzy.accept_pet(frisky, frisky)
@happitails.accept_animal("Fluffy", fluffy)
@happitails.accept_client("Sara", sara)
@happitails.accept_client("lizzy", lizzy)
@happitails.to_s

def menu
  puts ""
  puts "Welcome to HappiTails Animal Shelter!"
  puts "Please choose from the menu below: "
  puts ""
  puts "A: Display Animals"
  puts "B: Display Clients"
  puts "C: Create Animal"
  puts "D: Create Client"
  puts "E: Adopt Animal"
  puts "F: Put Animal Up For Adoption"
  puts "Q: Quit"
  puts ""
  command = gets.chomp.upcase


  case command
  when "A"
    puts @happitails.display_animals
    menu
  when "B"
    puts @happitails.display_clients
    menu
  when "C"
    puts "Name the animal"
    name = gets.chomp
     if @happitails.animals.include?(name)
      puts "Sorry we've already got one."
      menu
    end
    puts "How old is it?"
    animal_age = gets.chomp
    puts "animal species?"
    animal_species = gets.chomp
    new_animal = Animal.new(name, animal_age, animal_species)
    @happitails.accept_animal(name, new_animal)
    puts "Added your pet"
    puts "A #{animal_species} named #{name}, cute!"
    puts "Does #{name} have any toys?"
    puts "Yes or no?"
       # this can be better, take multiple toys
    toy = gets.chomp.downcase
    if toy == "no"
      puts "OK, we're done!"
    elsif toy == "yes"
      puts "What kind of toy?"
      toy = gets.chomp
      new_animal.toys << toy
      puts "OK, #{name}'s #{toy} will be safe with us."
    end
    menu

  when "D"
    puts "And what's your name?"
    name = gets.chomp
     if @happitails.clients.include?(name)
      puts "Hey you're already a client here."
      menu
    end
    puts "How old are you? Sorry not trying to be rude."
    client_age = gets.chomp
    new_client = Client.new(name, client_age)
    @happitails.accept_client(name, new_client)
    puts "Welcome to HappiTails, #{name}!"

  when "E"
    puts "What was your HappiTails registration name:"
    adopter = gets.chomp
      if @happitails.clients.include?(adopter)==true
        puts "Here's what we've got:"
        @happitails.display_animals
        puts "See something you like?"
        get_that_pet = gets.chomp
        if @happitails.animals.include?(get_that_pet)==true
          @happitails.clients[adopter].accept_pet(get_that_pet, adopter)
         puts "Congrats! #{get_that_pet} is yours!"
         @happitails.give_away_animal(get_that_pet)
        else
        puts "sorry I dont think we have that pet"
        end
      else
        puts "Please register"
     end
  menu

  when "F"
    puts "What was your HappiTails registration name:"
    owner = gets.chomp
    if @happitails.clients.include?(owner)==true
      puts "So who are you giving up?"
      #commented out code here is attempt input control
      @happitails.clients[owner].display_pets
      goner = gets.chomp
      # if @happitails.clients[owner[pets]].include?(goner)
       @happitails.clients[owner].give_away_pet(goner)
       @happitails.accept_animal(goner, goner)
        puts "We've got your pet #{goner}!"
        # @happitails.clients[owner]
      else
        puts "Please register"
      end

    # Put Animal Up For Adoption
  when "Q"
    Kernel.exit
  end
end
response = menu
while response != "Q"
  response = menu
end

menu
