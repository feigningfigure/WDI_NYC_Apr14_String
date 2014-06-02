function Hangman(word) {

var word = chosenWord()
var guess_counter = 0;
var guessed_letters = []

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

guessed_letters.push(letter)
guess_counter++

function gameStatus()
{ if (guess_counter === 5)
  {game_status =  "That was your last guess, game over";}
  else {game_status = "Keep trying" + " " + (5 - guess_counter) + " tries left. Letters you've guessed: " + guessed_letters;}
  return game_status;
}

if (guess_counter < 6)
{return current_progress + " " + gameStatus();}
else {return "NO YOUR GAME IS OVER SORRY";}
}

this.giveUp = function() {
  guess_counter = 6
  return "The word was" + " " + word + ". You gave up, please play again.";
}

this.seeProgress = function () {
  return "So far you've got: " + current_progress + " with " + (5 - guess_counter) + " left to guess. You've already guessed: " + guessed_letters ;
}

}

var game = new Hangman (["detective", "kitten", "puppy"]);
// console.log(game.progress());
console.log(game.guess("x"));
console.log(game.guess("t"));
console.log(game.guess("e"));
console.log(game.seeProgress());
console.log(game.giveUp());
console.log(game.guess("f"));
console.log(game.guess("l"));
console.log(game.guess("c"));

