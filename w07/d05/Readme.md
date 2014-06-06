###Week07-Day05

#WORK IN YOUR OWN FOLDER ONLY!

---

## Morning Exercise


### Deal It!


#### Part 1
- Create a ruby class called `Card`
- When a new instance of Card is created, it should have a rank and a suit.
- Give the class a `to_s` method that will tell the user which card it is, i.e. "2 of Spades" or "Queen of Diamonds."


#### Part 2
- Create a `Deck` class which will emulate an entire deck of cards
- The idea is to emulate actual playing cards, so your ranks should be 2 through Ace, and your suits should be Spade, Heart, Club, and Diamond.
- Upon creating a new instance of Deck, an entire deck of cards should be created. (Remember, since we are emulating an actual deck of cards, there should be no repeats.)
- Write a `shuffle` method which will shuffle the deck


#### Part 3
- Add a `choose_card` method that enables a user to choose a random card.


#### What it does...

At the end, you will be able to call

	new_deck.shuffle
	new_deck.choose_card

to shuffle the deck and deal a card.

---
##Doctor Smoketop's Brobdingnagian Bestiary
- ***Goal***: Take the prexisitng code and update it to use AJAX as well as adding new functionality.
	- This will give you additional experience and practice with Javascript and AJAX
	- This will help you to work with other people's code (hint hint: it's preparation for project 2)
	 
- ***Step 1***:
	- Go over the existing code and be sure you understand how it works.  It uses some advanced tecniques, so pay attention to how the applicaiton is structured.
	- Don't forget that you will need to create the database, run the migrations and run the seed file. 
- ***Step 2***: 
	- Add a javascript file and update the `index` method to respond with json.  
		- In your javascript file, add an AJAX call and whatever other functions you need to preserve the current functionality, but without having to refresh the page.  This will also require using jQuery to manipulate the DOM.
- ***Step 3***:
	- Add your own controller actions and corresponding javascript for the other CRUD methods 
		- Use this order - create, destroy, update.
		
- ***Notes***
	- Don't be afraid to update the starter code as you need to.  Some things will have to be changed as you build out the application while other things will have to be thrown away completely.  
	- This is a great wrapup of everything we have done.  Spend enough time working on it because it's great preparation for next week.  
