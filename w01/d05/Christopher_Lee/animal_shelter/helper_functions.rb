def add_animal
	animal_attributes = []
	puts "What is the animal's name?"
    animal_attributes << animal_name = gets.chomp.capitalize
    puts "How old is the animal?"
    animal_attributes << animal_age = gets.chomp
    puts "What is the animal's gender?"
    animal_attributes << animal_gender = gets.chomp
    puts "What kind of animal is it?"
    animal_attributes << animal_type = gets.chomp
    puts "Any toys? (Y/N)?"
    animal_toys = gets.chomp.upcase
    case animal_toys
      when "Y"
        puts "Please list #{animal_name}'s toys (comma separated)"
        animal_attributes << animal_toys = gets.chomp.split(",")
      when "N"
        animal_attributes << animal_toys = []
    end
    return animal_attributes
end