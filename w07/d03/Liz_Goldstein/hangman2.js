function Hangman(word) {
  this.progress = function () {
    var guesses = []
    word.split("").forEach(function(letter) {
      guesses.push("_");
    });
    return guesses.join(" ");
  }

}

var game = new Hangman("detective");

console.log("___________");
console.log(game.progress());


