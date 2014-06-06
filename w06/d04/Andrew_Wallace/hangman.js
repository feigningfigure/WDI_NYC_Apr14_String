function Hangman(word) {
  var wrongGuess = false;
  var badGuessCount = 0;
  var gameOver = false;
  var playerProgress = []
  var wordLength = word.length;
  var letters = word.split('');

 for (var i = 0; i < word.length; i++) {
      playerProgress.push("_");
  }

  this.progress = function() {
    return playerProgress.join(" ");
  }

  this.guess = function(letter) {
    wrongGuess = true;
    var placeholders = playerProgress;
    for (var i = 0; i <= word.length; i++) {
      if (word.charAt(i) === letter.toLowerCase() && badGuessCount <= 5) {
        wrongGuess = false;
        placeholders[i] = letter;
      } else {
      badGuessCount++;
      }
    }
  }
}

  // this.guess = function(letter) {
  //   wrongGuess = true;
  //   var placeholders = playerProgress;
  //   for (var i = 0; i < word.length; i++) {
  //     if (word.charAt(i) == letter.toLowerCase() && badGuesses <= 5) {
  //       wrongGuess = false;
  //       placeholders[i] = letter;
  //     } else if ( badGuesses > 5) {
  //       return "Tough luck, you lose."
  //     } else {
  //       badGuesses++;
  //     }
  //   }
  // }











}


