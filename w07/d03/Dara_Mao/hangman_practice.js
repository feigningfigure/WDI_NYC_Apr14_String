function Hangman(word){
    this.progress = function (){
      var guesses = [];

      word.split("").forEach(function(letter){
        guesses.push("_ ");
      });
      return guesses.join(" ");
  }


  this.guess = function(letter){
    word.split("").forEach(function(index){
      if (letter === index){
        console.log(true);
      }
      else {
        console.log(index);
      }

    }); // foreach function ends
    } // guess function ends
} // Hangman function ends

var game = new Hangman ("detective");

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress());

console.log(game.guess("a"));
