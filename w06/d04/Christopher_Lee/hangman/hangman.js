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

function Hangman(word){
  this.progress = function(){
      var playerProgress = [];
      // for each letter in the string ...
      for (var i = 0; i < word.length; i++){
        // add an underscore to the array
        playerProgress.push("_");
      }
  return playerProgress.join(" "); // array => string
  };

  this.guess = function(letter){
    return "this is " + letter
  }
}


var game = new Hangman("detective");

console.log(game.progress());

game.guess("b");

var game = new Hangman("gandhi");

console.log(game.progress());

// game.progress(); //=> "_ _ _ _ _ _ _ _ _"

// var game = new Hangman("gandhi");

// game.progress(); //=> "_ _ _ _ _ _"

