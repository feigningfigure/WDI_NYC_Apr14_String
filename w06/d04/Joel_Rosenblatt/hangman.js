var filmsArray = ["Killer's Kiss", "The Killing", "Paths of Glory", "Spartacus", "Lolita", "Dr Strangelove", "2001 A Space Odyssey", "A Clockwork Orange", "Barry Lyndon", "The Shining", "Full Metal Jacket", "Eyes Wide Shut"];

function Hangman() {

  //Rnadom choice of film
  var correct_guesses = new Array();
  var random_choice = filmsArray[Math.floor(Math.random() * filmsArray.length)];
  var word = random_choice.toLowerCase();

  //Split film
  var wordArray = word.split("");

  //Guess function
  this.guess = function(user_guess){
    wordArray.forEach(function(letter) {
      if (letter === user_guess) {
        correct_guesses.push(user_guess);
        return true;
      }
      else {
        return false;
      }
    });
  }

  //Actual game
  this.progress = function() {
    wordArray.forEach(function(letter) {
        if (letter === " ") {
          console.log("/");
        }
        else if (correct_guesses.forEach(function(guess) {letter ===  guess;})){
          console.log(user_guess);
        }
        else {
          console.log("_");
        }
    });
  };
}

var game = new Hangman();
game.progress();

// Array.prototype.some()
// Returns true if at least one element in this array satisfies the provided testing function.
