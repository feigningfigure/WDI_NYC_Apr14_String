function Hangman(word) {
  var wordLength = word.length;
  var wordArray = word.split("");

  this.progress = function() {
    var string = [];
    while (wordLength > 0) {
      string.push("_");
      wordLength -= 1;
    }

   console.log(string.join(" "));
   console.log(wordArray);
  }
}

var game = new Hangman("detective");

game.progress(); // => "_ _ _ _ _ _ _ _ _"
