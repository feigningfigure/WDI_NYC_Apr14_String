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
  var letters = word.split('');
  this.progress = function(){
      var playerProgress = [];
      // for each letter in the string ...
      for (var i = 0; i < word.length; i++){
        // add an underscore to the array
        playerProgress.push("_");
      }
  return playerProgress.join(" "); // array => string
  };

  this.guess = function(letter_guess){
    var indices = [];
    var idx = chars.indexOf(letter_guess);
    while (idx != -1) {
        indices.push(idx);
        idx = chars.indexOf(letter_guess, idx + 1);
    }
    if(indices.length > 0){
      return indices
    }

  }
}


var game = new Hangman("detective");

console.log(game.progress());

game.guess("e");

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

