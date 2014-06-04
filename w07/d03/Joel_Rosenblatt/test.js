function Hangman(word) {
  var guesses = [];
  this.progress = function() {

      word.split("").forEach(function(letter) {
          guesses.push("_");
      });

      return guesses.join(" ");
  };

  this.guess = function(letter) {
    if (word.indexOf(letter) !== -1) {
      for (var i = 0; i < word.length; i++) {
        if (word[i] === letter) {
          playerProgress[i] = letter;
        }
      }
      return true
    } else if (word.indexOf(letter) === -1){
      if (guesses.indexOf(letter) === -1){
        guesses.push(letter);
      }
      return false
    }
  }
    };

var game = new Hangman("detective");

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress());

console.log(false);
console.log(game.guess("a"));

// console.log(true);
// console.log(game.guess("d"));

// console.log("d _ _ _ _ _ _ _ _");
// console.log(game.progress());

// console.log(true);
// console.log(game.guess("t"));

// console.log("d _ t _ _ t _ _ _");
// console.log(game.progress());
