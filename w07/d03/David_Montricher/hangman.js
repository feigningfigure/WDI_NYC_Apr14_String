function Hangman(word){
  this.progress = function(){
    var guesses = [];

    word.split("").forEach(function(letter){
      guesses.push("_");
    });

    return guesses.join(" ");
  };
  // Build a function that checks for a specific letter on the word ('detective' in this case)
  this.guess = function(letter) {
    word.split("").forEach do
      letter on word
      return false

  };

}

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
