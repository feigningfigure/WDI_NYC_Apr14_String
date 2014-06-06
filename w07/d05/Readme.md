###Week07-Day05

#WORK IN YOUR OWN FOLDER ONLY!

---

## Morning Exercise


### Deal It!


#### Part 1
- Create a ruby class called `Card`
- When a new instance of Card is created, it should have a rank and a suit.

The idea is to emulate actual playing cards, so your ranks should be 2 through Ace, and your suits should be Spade, Heart, Club, and Diamond.

- Give the class a `to_s` method that will tell the user which card it is, i.e. "2 of Spades" or "Queen of Diamonds."


#### Part 2
- Create a `Deck` class which will emulate an entire deck of cards
- Upon creating a new instance of Deck, an entire deck of cards should be created. (Remember, since we are emulating an actual deck of cards, there should be no repeats.)
- Write a `shuffle` method which will shuffle the deck


#### Part 3
- Add a `choose_card` method that enables a user to choose a random card.


#### What it does...

At the end, you will be able to call

	new_deck.shuffle
	new_deck.choose_card

to shuffle the deck and deal a card.
