function Hangman(word) {
  this.progress = function() {
    var guesses = []

    word.split("").forEach(function(letter) {
      if (inArray(letter,guesses))
      {
        guesses.push(letter);
      } else {
        guesses.push("_");
      }
    });
    return guesses.join(" ");
  };
  this.guess = function(letter) {
    correct = 0
    word.split("").forEach(function(character) {
      if (character === letter)
      {
        correct += 1
      }
    });
    if (correct > 0)
    {

      return true
    } else {
      return false
    }
  };
}

var game = new Hangman("detective");

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress());

console.log(false);
console.log(game.guess("a"));

console.log(true);
console.log(game.guess("d"));

console.log("d _ _ _ _ _ _ _ _");
console.log(game.progress());

console.log(true)
console.log(game.guess("t"));

console.log("d _ t _ _ t _ _ _")
console.log(game.progress());
