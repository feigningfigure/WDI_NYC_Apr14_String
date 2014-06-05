function Hangman(word) {
  this.progress = function() {
    var guesses = [];

    word.split("").forEach(function(letter) {
      guesses.push("_");


    });

    return guesses.join(" ");
  }
  word_array = word.split("")

  this.guess = function(letter) {

    for(var i=0; i < word_array.length; i++)

    if(letter === word_array[i]) {
      console.log("true")
    } else {
      console.log("false")
    }



  };
}

var game = new Hangman("detective");


//this came first
console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress());


// console.log(false);
console.log(game.guess("e"));



// big picture then code. work out--> in
