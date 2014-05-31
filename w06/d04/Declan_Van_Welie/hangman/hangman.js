function Hangman(word) {

  var playerProgress = []
  var guess_counter = 0

  this.progress = function(){



   for (var i = 0; i < word.length; i++) {
    playerProgress.push("_");

    };

     // return playerProgress.join(" ");


    console.log(playerProgress.join(" "));

    return playerProgress.join(" ");
  }




 this.guess = function(letter){

  //
  word_array = word.split("")

  guess_counter += 1

  //turn the word into an array first and keep the playerProgress array an array (no join). Then replace that index each time. Splice does not seem to be working.

    for (var i = 0; i < word_array.length; i++){
    if (word_array[i] === letter) {
      // playerProgress[i] = letter;
      // playerProgress[i].replace("_", letter);
      playerProgress.splice(word_array[i], word_array.length + 1, letter);

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
    }

}
    console.log(word.contains(letter));
    console.log(guess_counter);


 }


}



var game = new Hangman ("detective");

game.progress();
game.guess("t");
game.progress();
game.guess("d");
game.progress();
game.guess("e");
game.progress();


// game.guess("t");
// game.progress();

// Add a guess counter to the game to track the number of guesses that have been made
