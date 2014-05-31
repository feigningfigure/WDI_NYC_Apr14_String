function Hangman(word) {

  var playerProgress = []

  this.progress = function(){



   for (var i = 0; i < word.length; i++) {
    playerProgress.push("_");

    };


    console.log(playerProgress.join(" "));

    return playerProgress.join(" ");
  }




 this.guess = function(letter){

  //
  word_array = word.split("")

    for (var i = 0; i < word_array.length; i++){
    if (word_array[i] === letter) {
      playerProgress[i] = letter;
      // playerProgress[i].replace("_", letter);
      // playerProgress.splice(word_array[i], (i + 1), letter);

            // playerProgress[i] = letter;
      // console.log("true");
       // playerProgress.splice(word_array[2], 0, letter);
      // } else {
      // console.log("false");
      // playerProgress.push("_");

    }
  }
    if ( !String.prototype.contains ) {
    String.prototype.contains = function() {
        return String.prototype.indexOf.apply( this, arguments ) !== -1;
    };
}
    console.log(word.contains(letter));
    return playerProgress.join("")


 }

}



var game = new Hangman ("detective");

game.progress();
game.guess("t");
game.progress();
// game.guess("t");
// game.progress();

// Add a guess counter to the game to track the number of guesses that have been made
