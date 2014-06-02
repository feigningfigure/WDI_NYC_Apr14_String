function Hangman(word) {
  var wrongGuess = false;
  var badGuesses = 0;
  var gameOver = false;
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
        badGuesses++;
      }
    }
  }


