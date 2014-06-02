function Hangman(word) {
  var wrongGuess = false;
  var badGuesses = 0;
  var playerProgress = []
  var wordLength = word.length;
  var letters = word.split('');

 for (var i = 0; i < word.length; i++) {
      playerProgress.push("_");
  }

  this.progress = function() {
    console.log(playerProgress.join(" "));
  }

  this.guess = function(letter) {
    wrongGuess = true;
    var placeholders = playerProgress;
    for (var i = 0; i < word.length; i++) {
      if (word.charAt(i) == letter.toLowerCase()) {
        wrongGuess = false;
        placeholders[i] = letter;
      } else {
        badGuesses += 1;
      }
    }
  }
}

var game = new Hangman("detective");
// game.progress();
game.guess("e");







/*
var wrongGuess = false;
var badGuesses = 0;

function Hangman(word) {

    var wordLength = word.length;
    var letters = word.split('');
    // var lettersArray = [];
    // lettersArray.push(letters);

    this.progress = function() {
    //array to hold current state of guessed word
    var playerProgress = [];
    // for each letter in the string...
    for (var i = 0; i < word.length; i++) {
        playerProgress.push("_");
    }
        // use a space to join the underscores back together
        return playerProgress.join(" "); //array => string
    }

// First, default the wrong guess to be true before checking letter.  Set the player's progress to placeholders and assume the guess is wrong.
this.guess = function(letter) {
  wrongGuess = true;

// Split the placeholders into an array
placeholders = playerProgress.split('');
   // loop through the array
   for (var i = 0; i < wordLength; i++) {
      // if the guessed letter matches one in the word,
      // replace the underscore and set wrong guess to false.
      if (word.charAt(i) == letter.toLowerCase()) {
       placeholders[i] = letter;
       wrongGuess = false;
   }


   // if the guess was incorrect, increment the number of bad
   if (wrongGuess) {
      badGuesses ++;
  }
   // convert the array to a string and display it again
   playerProgress = placeholders.join('');
}
}













// function alterAt ( n, c, originalString ) {
//     return originalString.substr(0,n) + c + originalString.substr(n+1,originalString.length);
// }

}


// var game = new Hangman("detective");

// game.guess("a");
// game.guess("t");
// game.progress();



*/

