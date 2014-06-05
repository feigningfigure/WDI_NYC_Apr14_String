function Hangman(word) {
  this.progress = function () {
    var guesses = []
    word.split("").forEach(function(letter) {
      guesses.push("_");
    });
    return guesses.join(" ");
  }

  this.guess = function(letter){
    guesses = []
    word.split("").forEach(function(x_letter) {
      if(x_letter === letter)
        {
          i = 0
          while (i < word.length){
          guesses[i] = letter;
          return guesses;
          i++}
          console.log(guesses)
        }
      else {return false;}
    });

}

}

var game = new Hangman("detective");

console.log("___________");
console.log(game.progress());

// console.log(false)
console.log(game.guess("a"));

// console.log(true)
console.log(game.guess("d"));

// console.log("d__________");
// console.log(game.progress());

// console.log(true)
// console.log(game.guess("t"));

// console.log("d_t_t__t___");
// console.log(game.progress());
