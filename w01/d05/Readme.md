<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
#Readme.md
=======
###Week01-Day5
=======
>>>>>>> 5ac0e8961e9215466ecc2b15b06854a86c8274f6

##Part 1
- Build the ***Scrumr*** application
	- It should randomly assign each student to an instructor for each week's daily stand up meeting.  
 
--
#Part 2
##HappiTails
=======
#HappiTails
>>>>>>> 1393b9ab451d7b63ccfe0da1a6498fb52636a27a
- You are the manager at HappiTails animal shelter.
- You need to manage your shelter by storing and manipulating information about clients and animals.

###Specification:

#####Object Specs:
- Animal:
  - An animal should have a name.
  - An animal should have a species.
  - An animal can have multiple toys, but doesn't start with any.

- Client:
  - A client should have a name.
  - A client should have an age.
  - A client can have multiple pets (animals), but it doesn't start with any.
    - Pet names MUST be unique (What implications does this have for our choice of data structure?)
  - A client should be able to accept a pet
  - A client shoule be able to give away a pet


- Shelter:
  - A shelter should have a name
  - A shelter can have multiple animals, but it doesn't start with any.
    - Animal names MUST be unique
  - A shelter can have multiple clients, but it doesn't start with any.
    - Client names MUST be unique
  - A shelter should be able to display all of its clients.
  - A shelter should be able to display all of its animals.
  - A shelter should be able to give away an animal.
  - A shelter should be able to accept an animal
  - A shelter should be able to accept a client

---

<<<<<<< HEAD
<<<<<<< HEAD
#WORK IN YOUR OWN FOLDER ONLY!
>>>>>>> cb57b3ac796a3ecff7a864a9637154dc56251cea
=======
#####Commit 1
- Define the animal, client and shelter classes according to the specs. Each class should have the appropriate attributes and initialize method.
- Test these out with pry to make sure you can create the objects and that they do what you think the should do. Check the methods that you wrote too!

#####Commit 2
- Create a main.rb
- It should create a new shelter for you
- It should display a menu of options for the user to choose from:
  - Create an animal
  - Create a client
  - Create a shelter
  - Quit
- When creating an animal or client, the user is prompted for information like names, age etc. Newly created animals and clients should be added to the shelter.

#####Commit 3
- Add options to the menu so that a user can:
  - Display all animals
  - Display all clients

#####Commit 4
- Add options to the menu so that a user can:
  - Facilitate client adopts an animal. This means the client now has the animal and they should no longer be a part of the shelter.
  - Facilitate client puts an animal up for adoption. This means the client no longer has the animal and it should be added to the shelter.

#####Commit 5
- Create a seeds.rb file that initializes a shelter as well as a few animals and clients so you have some data to start with when you run your program.

#####Commit 6 (Bonus)
- Limit the number of animals a client can adopt to 2 per client. If they try to adopt more than that, yell at them.
- Refactor your code to make sure it is DRY (Don't Repeat Yourself) and all your methods are in the appropriate classes.

#####Commit 7 (Bonus)
- Add a new class that inherits from your client class called CatLady. A cat lady only takes cats, and takes as many cats as there is space in a computer's memory.
>>>>>>> 5ac0e8961e9215466ecc2b15b06854a86c8274f6
=======
##Part 1
- Make the tests pass

---

##Part 2
- In an `app.rb` file, create user prompts to facilitate
  - ...client adopting an animal. This means the client now has the animal and they should no longer be a part of the shelter.
  - ...client puts an animal up for adoption. This means the client no longer has the animal and it should be added to the shelter.

###Here is some starter:

```ruby

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
    # Display Animals
  when "B"
    # Display Clients
  when "C"
    # Create Animal
  when "D"
    # Create Client
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

```
---

##Bonus
- Create a seed.rb file that initializes a shelter as well as a few animals and clients so you have some data to start with when you run your program.

>>>>>>> 1393b9ab451d7b63ccfe0da1a6498fb52636a27a
