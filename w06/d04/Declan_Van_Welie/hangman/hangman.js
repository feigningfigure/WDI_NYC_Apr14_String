function Hangman(word) {

  var playerProgress = []
  var guess_counter = 0
  var letter_guesses = []
  // var word = word_array[Math.floor(Math.random() * word_array.length)];


  this.progress = function(){



   for (var i = 0; i < word.length; i++) {
    playerProgress.push("_");

    };

     // return playerProgress.join(" ");



    console.log(playerProgress.join(" "));


  }




 this.guess = function(letter){

  //
  word_list = word.split("")
  letter_guesses.push(letter);


  //turn the word into an array first and keep the playerProgress array an array (no join). Then replace that index each time. Splice does not seem to be working.

    for (var i = 0; i < word_list.length; i++){
    if (word_list[i] === letter) {
      // playerProgress[i] = letter;
      // playerProgress[i].replace("_", letter);
      playerProgress.splice(word_list[i], word_list.length + 1, letter);

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

if (!word.contains(letter)) {
  guess_counter += 1;
}

if (playerProgress === word){
  console.log("You win!");

}

console.log(word.contains(letter));
  // console.log(guess_counter);
}



 this.incorrect = function(){

  console.log(guess_counter);
 }

 this.guesses = function(){
  console.log(letter_guesses);
 }


}



var game = new Hangman ("detective");

game.progress();
game.guess("q");
game.progress();
game.guess("d");
game.progress();
game.guess("e");
game.progress();
game.incorrect();
game.guesses();

// game.guess("t");
// game.progress();

// Add a guess counter to the game to track the number of guesses that have been made
