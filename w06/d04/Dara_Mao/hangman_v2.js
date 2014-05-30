function Hangman (word){
  // this.word = word;

  this.progress = function(){
    // array
    var playerProgress = [];
    for (var i = 0; i < word.length; i++){
      // add an underscore to the array
      playerProgress.push("_ ");
    }
    // convert the array back to a string
    return playerProgress.join("");// array => string
  };
}

//Calling the function
var game = new Hangman ("detective");

game.progress(); // produces "--------" by splitting the letters into an array and splitting it back into a word

var game = new Hangman ("gandhi");

game.progress();
