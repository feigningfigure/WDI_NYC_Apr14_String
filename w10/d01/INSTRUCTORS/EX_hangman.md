# Hangman 1.0.0

## Phase 1 - Basics

- The game is passed a word
- The player can view their progress of discovered letters
- If a player guesses a correct letter, return `true`, and every instance of that letter should be revealed
- If a player guesses incorrectly, return `false`

```ruby
game = Hangman.new("detective")
game.progress()  #=> "_ _ _ _ _ _ _ _ _"
game.guess("a")  #=> false
game.guess("t")  #=> true
game.progress()  #=> "_ _ t _ _ t _ _ _"
```

## Phase 2 - End Game

- If a player makes more than 5 incorrect guesses, the game is lost
- If a player guesses all the letters, the game is won
- If the game is over, `guess()` returns `nil` and `progress()` returns the word

```ruby
game = Hangman.new("detective")
game.progress()  #=> "_ _ _ _ _ _ _ _ _"
game.guess("b")  #=> false
game.guess("z")  #=> false
game.guess("y")  #=> false
game.guess("e")  #=> true
game.progress()  #=> "_ e _ e _ _ _ _ e"
game.guess("v")  #=> false
game.guess("k")  #=> nil
# the game is over, so even correct guesses are ignored
game.guess("d")  #=> nil
game.progress()  #=> "detective"
```

- If a player gives up, the game is lost and the word is returned

```ruby
game = Hangman.new("detective")
game.progress()  #=> "_ _ _ _ _ _ _ _ _"
game.giveUp()    #=> "detective"
game.guess("d")  #=> nil
```


## Phase 3 - Randomness

- The game is passed an **array** of words, and picks one randomly.

```ruby
game = Hangman.new(["detective", "gandhi"])
```


## Phase 4 - Edge Cases and Information

- The game should show all guesses so the player doesn't repeat themselves
- The game should show how many incorrect guesses have been made
- If a player guesses the same incorrect letter twice it should only count as one incorrect guess

```ruby
# For testing we'll just pass an array with one word in it
game = Hangman.new(["detective"])
game.progress()    #=> "_ _ _ _ _ _ _ _ _"
game.guess("z")    #=> false
game.incorrect()   #=> 1
game.guesses()     #=> ["z"]
game.guess("z")    #=> false
game.incorrect()   #=> 1
game.guesses()     #=> ["z"]
```


## Bonus Phase 5 - Hints

- If a player asks for a hint, a random letter is revealed
- The first hint is free every additional hint counts as an incorrect guess

```ruby
game = Hangman.new(["detective"])
game.progress()    #=> "_ _ _ _ _ _ _ _ _"
game.hint()        #=> "c"
game.progress()    #=> "_ _ _ _ c _ _ _ _"
game.incorrect()   #=> 0
game.hint()        #=> "t"
game.progress()    #=> "_ _ t _ c t _ _ _"
game.incorrect()   #=> 1
```
