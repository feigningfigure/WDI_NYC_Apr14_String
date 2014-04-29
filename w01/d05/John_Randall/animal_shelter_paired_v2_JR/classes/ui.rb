class Ui
  def initialize(shelter)
    @shelter = shelter
  end

  def display_menu()
    # Assuming Shelter001 as shelter

    puts ""
    puts "Welcome to #{@shelter.name} Animal Shelter!"
    puts "Please choose from the menu below: "
    puts ""
    puts "A: Display Animals"
    puts "B: Display Clients"
    puts "C: Create Animal"
    puts "D: Create Client"
    puts "E: Adopt Animal"
    puts "F: Put Animal Up For Adoption"

    puts "G: Client Adopts Animal"


    puts "Q: Quit"
    puts ""
    command = gets.chomp.upcase


    case command
    when "A"
      puts @shelter.display_all_animals
    when "B"
      puts @shelter.display_all_clients
    when "C"
      # Create Animal
    when "D"
      # Create Client
    when "E"
      # Adopt Animal
    when "F"
      # Put Animal Up For Adoption


    when "G"                                                    #ToDO: Error messaging
      puts "Which clients is adopting an animal?"
      puts @shelter.display_all_clients
      gets client_adopting_animal.chomp

      puts "Which Animal?"
      puts @shelter.display_all_animals
      gets animal_being_adopted.chomp

      puts "What will the client name this new pet"
      gets new_pet_name

      client client_adopting_animal[new_pet_name] = @shelter.animals.delete(animal_being_adopted)


    when "Q"
      Kernel.exit
    end

  end

end
