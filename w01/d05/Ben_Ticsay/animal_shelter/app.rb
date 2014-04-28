require_relative 'classes/animal'
require_relative 'classes/shelter'
require_relative 'classes/client'


$happitails = Shelter.new("happitails", "41 W Broadway")


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
    $happitails.display_animals
    menu
  when "B"
    $happitails.display_clients
    menu
  when "C"
  	 puts "Name the animal"
    name = gets.chomp
    if $happitails.animals.include?(name)
      puts "Sorry we've already got one."
      menu
    end
    puts "How old is it?"
    animal_age = gets.chomp
    puts "animal species?"
    animal_species = gets.chomp
    new_animal = Animal.new(name, animal_age, animal_species)
    $happitails.accept_animal(name, new_animal)
    puts "Added your pet"
    @happitails.to_s
    puts "Does #{@name} have any toys?"
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
  	puts "Enter client name: "
    client_name = gets.chomp
    if $happitails.clients.include?(client_name)
      puts "Client already exists"
      menu
    else
    puts "Enter age: "
    client_age = gets.chomp

    client1 = Client.new(client_name, client_age)
    puts client1.to_s
    # @happitails.clients[client_name] = client1
    $happitails.accept_client(client_name, client1)

    puts "Client has been added"
   end

  when "E"
    # Adopt Animal
  when "F"
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













