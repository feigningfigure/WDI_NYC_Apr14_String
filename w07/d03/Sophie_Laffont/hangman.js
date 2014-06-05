function Hangman(word){

  this.progress = function(){
      var guesses = [];
    word.split("").forEach(function(letter){
      guesses.push("_");
    });

    return guesses.join(" ");
  }

  this.guess = function(letter){

   };
}

var game = new Hangman("detective");

console.log(game.progress());
game.guess("e");
console.log(game.progress());




