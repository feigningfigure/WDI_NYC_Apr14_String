
game_count = [];
playerProgress = [];
words = []
guessed_letters = []


function Hangman (words){

//Phase 3: Pick a random word from an array of inputs
function chooseWord () {
  var index_num =  Math.floor(Math.random()*words.length)
  var random_word = words[index_num];
  return random_word
}
    word = chooseWord();
    this.word = word;
    this.game_count = game_count;
    this.playerProgress = playerProgress;
    this.guessed_letters =  guessed_letters;

    for (var i = 0; i < word.length; i++){
// Adds underscores to represent the length of the word
        playerProgress.push("_ ");
    }

//.progress shows whats in the playerProgress array
  this.progress = function(){
    var index_num = -1;
    result = playerProgress.join("");
    return result; // array => string
  };

   this.giveUp = function(){
    // Prints the word
        console.log(word)
    // Set guess to null
        this.guess = null;
   }

  this.guess = function(letter){
    var index_num = -1;
    index_num = word.indexOf(letter)
    this.letter = letter;
    guessed_letters.push(this.letter);

    if (index_num === -1){
      game_count.push(1)
      console.log("false")
      if ( game_count.length >= 5){
        console.log ("Game Over")
        this.guess = undefined;
      }
    } else {
      console.log("true")
        //update playerProgress
        playerProgress[index_num] = letter;
        result = playerProgress.join("");
        // console.log(result)
      return;
     }
     return;
   };

// Shows all the guesses so far in the game
   this.guesses = function () {
    console.log(guessed_letters)
   }
// this.guesses function ends
 }


//Calling the function

var game = new Hangman(["detective"]);
 // ,"gandhi","sunday","maybe"]);
console.log(game.progress());
console.log(game.guess("t"));
console.log(game.progress());
console.log(game.guess("l"));
console.log(game.guess("k"));
console.log(game.guesses());
console.log(game.guess("a"));
console.log(game.guess("m"));
console.log(game.progress());
console.log(game.guesses());
// console.log(game.guess("l"));
// console.log(game.guess("l"));
// console.log(game.guess("l"));
// console.log(game.guess("l"));
// console.log(game.progress());
// console.log(game.guess("e"));
// console.log(game.progress());
// console.log(game.guess("l"));
// console.log(game.guess("d"));
// console.log(game.progress());
// console.log(game.giveUp());
// console.log(game.progress());
// console.log(game.guess("e"));
// console.log(game.progress());
// console.log(game.guess("l"));
// console.log(game.guess("d"));
// console.log(game.progress());

