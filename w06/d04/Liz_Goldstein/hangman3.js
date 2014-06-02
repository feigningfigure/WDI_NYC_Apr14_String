function Hangman(word) {

var word = chosenWord()
var guess_counter = 0;

function chosenWord() {
   return word[Math.floor(Math.random() * word.length)];
}

this.progress = function(){
    var playerProgress = [];
    for (var i = 0; i < word.length; i++) {
      playerProgress.push("_");
    }
    return playerProgress;
  };

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
{return current_progress + " " + gameStatus(); + guesses}
else {return "NO YOUR GAME IS OVER TOO MANY GUESSES";}
}

this.giveUp = function() {
  return "The word was" + " " + word;
}

this.seeProgress = function () {
  return "So far you've got: " + current_progress + " with " + (5 - guess_counter) + " left to guess" ;
}

}

var game = new Hangman (["detective", "kitten", "puppy"]);
// console.log(game.progress());
console.log(game.guess("x"));
console.log(game.guess("t"));
console.log(game.guess("e"));
console.log(game.seeProgress());
console.log(game.guess("f"));
console.log(game.guess("l"));
console.log(game.guess("c"));
console.log(game.giveUp());
