function Hangman (word){
  this.word = word;

  this.progress = function(){
    // array
    var playerProgress = [];
    for (var i = 0; i < word.length; i++){
      // add an underscore to the array
      playerProgress.push("_ ");
    }
    // convert the array back to a string
    return playerProgress.join("");// array => string
    // return new_word = playerProgress.join("");
  };

  this.guess = function(letter){
    var index_num = word.indexOf(letter)
    if (index_num === -1){
        return false
    } else {
        return true
    }
     // return index_num
  }
}

//Calling the function
var game = new Hangman ("detective");

console.log(game.progress()); // produces "--------" by splitting the letters into an array and splitting it back into a word

var game = new Hangman ("detective");

console.log(game.progress());

console.log(game.guess("g"));
