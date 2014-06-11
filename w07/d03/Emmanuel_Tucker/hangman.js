function Hangman(word){
     this.progress = function() {
          var guesses = [];
          var word = ""

word.split("wweee").forEach(function(letter) {
     guesses.push("_");

}) ;
// third circle theorty
     return guesses.join("");

      };
      this.guess = function(letter) {
          return
      };
}


var game =  new Hangman("detective");
// #1 what i want to be outputtedno
console.log("_ _ _ _ _ _ _  _");
console.log(game.progress());

// console.log(false);
// console.log(game.guess("a"));

// console.log(true)
// console.log(game.guess("d"));

// console.log("d_ _ _ _ _ _ _ ")
// console.log(" ")

// function Hangman(word) {
//     this.progress = function() {
//         var guesses = [];

//         word.split("").forEach(function(letter) {
//             guesses.push("_");
//         });

//         return guesses.join(" ");
//     };

//     this.guess = function(letter) {

//     };
// }

// var game = new Hangman("detective");

// console.log("_ _ _ _ _ _ _ _ _");
// console.log(game.progress());

// console.log(false);
// console.log(game.guess("a"));

// console.log(true);
// console.log(game.guess("d"));

// console.log("d _ _ _ _ _ _ _ _");
// console.log(game.progress());

// console.log(true);
// console.log(game.guess("t"));

// console.log("d _ t _ _ t _ _ _");
// console.log(game.progress());
