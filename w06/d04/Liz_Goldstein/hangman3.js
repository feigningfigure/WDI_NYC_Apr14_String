function Hangman(word) {

  this.progress = function(){
    var playerProgress = [];
    for (var i = 0; i < word.length; i++) {
      playerProgress.push("_");
    }
    return playerProgress;
  };

var guess_counter = 0;

this.guess = function(letter) {
    if (guess_counter === 0) {
      current_progress = this.progress();}
      var word_array = word.split("");
      for (var i = 0; i < word.length; i++) {
        if (word_array[i] === letter) {
          current_progress[i] = letter;}
          }
guess_counter++

function gameStatus()
{ if (guess_counter === 5)
  {game_status =  "Game over";}
  else {game_status = "Keep trying" + " " + (5 - guess_counter) + " left";}
  return game_status;
}

if (guess_counter < 6)
{return current_progress + " " + gameStatus();}
else {return "NO YOUR GAME IS OVER TOO MANY GUESSES";}
}

this.giveUp = function() {
  return "The word was" + " " + word;
}

}

var game = new Hangman ("detective");
// console.log(game.progress());
console.log(game.guess("x"));
console.log(game.guess("t"));
console.log(game.guess("e"));
console.log(game.guess("f"));
console.log(game.guess("l"));
console.log(game.guess("c"));
console.log(game.giveUp());
