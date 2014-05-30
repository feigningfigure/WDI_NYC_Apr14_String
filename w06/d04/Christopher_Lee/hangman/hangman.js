// function Hangman(word){
//   // FILL ME IN
//   var letters = word.split('');
//   var blanks = []
//   // var spaces = function(){for(i=0;i<word.length;i++){
//   //   blanks.push("_"); }};
//   this.progress = function(word){
//   // FILL ME IN
//   for(i = 0; i < letters.length; i++){
//     blanks.push("_")};
//   return blanks;
//   };
// }

// make sure you didn't break other stuff

function Hangman(word){
  var letters = word.split('');
  var playerProgress = [];
  var incorrectGuesses = 0;
  var giveUp = false;

  this.progress = function(){
    if(incorrectGuesses >= 5 || giveUp === true) {
      return word
    } else if (playerProgress.length === 0){
      // for each letter in the string ...
      for (var i = 0; i < word.length; i++){
        // add an underscore to the array
        playerProgress.push("_");
      }
    }
  return playerProgress.join(" "); // array => string
  };

  // its adding the number of letters to the array regardless of what is in it

  this.guess = function(letter_guess){
    var indices = [];
    var idx = letters.indexOf(letter_guess);
    while (idx != -1) {
        indices.push(idx);
        idx = letters.indexOf(letter_guess, idx + 1);
    }
    if (incorrectGuesses >= 5 || giveUp === true){
      return null
    } else if (indices.length > 0) {
      indices.forEach(function(correct_letter) {
        playerProgress[correct_letter] = letter_guess
      });
      return true
    } else {
      incorrectGuesses++;
      console.log(incorrectGuesses);
      return false
    }
    //else return false and increment the counter. make sure it increments  the counter first. correctly incrementing the counter. now returns null after 5 guesses.
  };

  this.giveUp = function(){
    giveUp = true;
    return word
  }
}


var game = new Hangman("detective");

console.log(game.progress());

game.guess("e");

console.log(game.progress());

game.guess("b");
game.guess("x");
game.guess("y");
game.guess("z");
game.guess("b");

console.log(game.progress());



var game = new Hangman("detective");
game.progress();  //=> "_ _ _ _ _ _ _ _ _"
game.giveUp();    //=> "detective"
game.guess("d");  //=> null







var game = new Hangman("gandhi");

console.log(game.progress());

// game.progress(); //=> "_ _ _ _ _ _ _ _ _"

// var game = new Hangman("gandhi");

// game.progress(); //=> "_ _ _ _ _ _"



// Works!
var indices = [];
var idx = chars.indexOf("z");
while (idx != -1) {
    indices.push(idx);
    idx = chars.indexOf("z", idx + 1);
}

// Like each in Ruby
a.forEach(function(entry) {
    console.log(entry);
});
