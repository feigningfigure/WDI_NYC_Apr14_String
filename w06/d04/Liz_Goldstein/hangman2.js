function Hangman(word) {

  this.progress = function(){
    var playerProgress = [];
    for (var i = 0; i < word.length; i++) {
      playerProgress.push("_");
    }
    return playerProgress;
  };
////////

var word_counter = 0;
  this.guess = function(letter) {
      var progress = this.progress();
      var word_array = word.split("");
      for (var i = 0; i < word.length; i++) {
        if (word_array[i] === letter) {
          progress[i] = letter;}
          }
word_counter++

var game_status = function gameStatus()
{ if (word_counter === 5){return "Game over"};
}

return progress + " " + word_counter + game_status
}
}

var game = new Hangman ("detective");
// console.log(game.progress());
console.log(game.guess("x"));
console.log(game.guess("t"));
