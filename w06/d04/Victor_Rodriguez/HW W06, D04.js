//PHASE 1

var game = new Hangman ("detective") {
if game.guess = ("d");
   game.progress.push("d"+"_"+"_"+"_"+"_"+"_"+"_"+"_"+"_");
   alert("TRUE");

if game.guess = ("e");
game.progress.push(" "+"e"+" "+"e"+" "+" "+" "+" "+"e");
   alert("TRUE");

if game.guess = ("t");
game.progress.push(" "+" "+"t"+" "+" "+"t"+" "+" "+" ");
   alert("TRUE");

if game.guess = ("c");
game.progress.push(" "+" "+" "+" "+"c"+" "+" "+" "+" ");
   alert("TRUE");

if game.guess = ("i");
game.progress.push(" "+" "+" "+" "+" "+" "+"i"+" "+" ");
   alert("TRUE");

if game.guess = ("v");
game.progress.push(" "+" "+" "+" "+"c"+" "+" "+"v"+" ");
   alert("TRUE");

else alert("False");
}


//PHASE 2 - END GAME
var game = new Hangman("detective");
  numOfGuesses = 5;
  while (numOfGuesses > 0) {
    userGuess = prompt("What letter would you like to guess?");
  // Verify that they have not yet guessed this letter incorrectly
  while (guesses.indexOf(userGuess.toLowerCase()) >= 0) {
  alert("Already used that letter, please try again");
  userGuess = prompt("What letter would you like to guess?");
  }

  // Convert their letter to lowercase
  userGuess = userGuess.toLowerCase();
  for (x = 0; x < splitWord.length; x++) {
  // Check to see if the letter exists in the word
  if (userGuess == splitWord[x]) {
  // Add their guess to guesses
  guesses.push(userGuess);

  // If it does exist, replace the proper _ position
  // With the guessed letter
  underscore.replace([x], userGuess);
  }

  // If it does not exist, add their guess to wrong guesses       
  else if (userGuess != splitWord[x]) {
  wrongGuesses.push(userGuess);
  numOfGuesses--;
  }
  // If they've guessed too many times, tell them they lost
  else if (userGuess != secretWord && numOfGuesses === 0) 
    
  alert("Game Over");
  }

//game.progress();  //=> "_ _ _ _ _ _ _ _ _"
//game.guess("b");  //=> false
//game.guess("z");  //=> false
//game.guess("y");  //=> false
//game.guess("e");  //=> true
//game.progress();  //=> "_ e _ e _ _ _ _ e"
//game.guess("v");  //=> false
//game.guess("k");  //=> null
// the game is over, so even correct guesses are ignored
//game.guess("d");  //=> null
//game.progress();  //=> "detective"

//PHASE 3 = RANDOMNESS

var mygames = ["detective", "gandhi", "kobe", "jeter"];
var game = mygames[Math.floor(Math.random()* myShows.length)];
