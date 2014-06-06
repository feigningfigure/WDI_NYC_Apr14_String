var clog = console.log

function Hangman(word) {
  this.progress = function() {
    var guesses = [];

    word.split("").forEach(function(letter) {
      guesses.push("_");
    });
    return guesses.join(" ");
  }

  this.guess = function(letter) {
    wrongGuess = true;
    var placeholders = player
  };
}

var game = new Hangman("detective");


clog("_ _ _ _ _ _ _ _ _");
clog(game.progress());

// clog(false)
// clog(game.guess("a"));

// console.log(true);
// console.log(game.guess("d"));

// console.log("d _ _ _ _ _ _ _ _")
// console.log(game.progress());

// console.log(true);
// console.log(game.guess("t"));

// console.log("d _ t _ _ t _ _ _");
// console.log(game.progress());

