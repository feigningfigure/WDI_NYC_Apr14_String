var filmsArray = ["Killer's Kiss", "The Killing", "Paths of Glory", "Spartacus", "Lolita", "Dr Strangelove", "2001 A Space Odyssey", "A Clockwork Orange", "Barry Lyndon", "The Shining", "Full Metal Jacket", "Eyes Wide Shut"];

function Hangman() {

  var correct_guesses = new Array();
  var random_choice = filmsArray[Math.floor(Math.random() * filmsArray.length)];
  var word = random_choice.toLowerCase();
  var playerProgress = [];
  var attempts = 0;
  var guesses = [];
  var hint_counter = 0;
  var correct_answer = word.split("").join(' ');

  //Split film
  var wordArray = word.split("");

  this.progress = function(){
    if (attempts < 5) {
      if (playerProgress.length === 0) {
        for (var i = 0; i < word.length; i++) {
          playerProgress.push("_");
        }
      } else if (correct_answer === playerProgress.join(' ')) {
        return word + " Woot woot!";
      }
      return playerProgress.join(" ");
    } else if (attempts >= 5) {
      return word + " Wah Wah";
    }
  };

  this.guess = function(letter) {
    if (attempts < 5){
      if (word.indexOf(letter) !== -1) {
        for (var i = 0; i < word.length; i++) {
          if (word[i] === letter) {
            playerProgress[i] = letter;
          }
        }
        return true
      } else if (word.indexOf(letter) === -1){
        if (guesses.indexOf(letter) === -1){
          attempts++;
          guesses.push(letter);
        }
        return false
      }
    } else {
      playerProgress = word.split("", word.length);
      return null
    }
  };


  this.giveup = function() {
    attempts = 5;
    playerProgress = word.split("", word.length);
    return word
  }

  this.incorrect = function() {
    return attempts
  }

  this.guesses = function() {
    return guesses
  }

  this.hint = function(){
    var random = Math.floor(Math.random() * word.length);;
    var letter = word[random];

    if (playerProgress.indexOf(letter) === -1){
      if (hint_counter === 0) {
        this.guess(letter);
        hint_counter++;
      } else {
        this.guess(letter);
        attempts++;
      }
    } else {
      this.hint();
    }
    return letter
  };

  function randomWord(words) {
    return words[Math.floor(Math.random() * words.length)];
  }

}

var game = new Hangman();
console.log(game.progress());
console.log(game.guess("a"));
console.log(game.progress());


// Array.prototype.some()
// Returns true if at least one element in this array satisfies the provided testing function.
