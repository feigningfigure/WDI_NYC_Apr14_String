
// =====================================

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress()); //decided on the game.progress output before designing it. doing this forces you to scope things down, force to think ahead and settle on one thing

// =====================================
var game = new Hangman ("detective");

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress()); //decided on the game.progress output before designing it. doing this forces you to scope things down, force to think ahead and settle on one thing

// =====================================
function Hangman(word){

}

var game = new Hangman ("detective");

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress()); //decided on the game.progress output before designing it. doing this forces you to scope things down, force to think ahead and settle on one thing


// =====================================
function Hangman(word){
    this.progress = function (){
    return "yo";
  }
}

var game = new Hangman ("detective");

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress()); //decided on the game.progress output before designing it. doing this forces you to scope things down, force to think ahead and settle on one thing

// =====================================
function Hangman(word){
    this.progress = function (){
      var guesses = [];

      word.forEach(function(letter){
        console.log(letter);
      });
  }
}

var game = Hangman ("detective");

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress()); //decided on the game.progress output before designing it. doing this forces you to scope things down, force to think ahead and settle on one thing

// =====================================
function Hangman(word){
    this.progress = function (){
      var guesses = [];

      word.split("").forEach(function(letter){
        guesses.push("_ ");
      });
  }
}

var game = new Hangman ("detective");

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress()); //decided on the game.progress output before designing it. doing this forces you to scope things down, force to think ahead and settle on one thing


// =====================================
function Hangman(word){
    this.progress = function (){
      var guesses = [];

      word.split("").forEach(function(letter){
        guesses.push("_ ");
      });
      return guesses.join(" ");
  }
}

var game = new Hangman ("detective");

console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress()); //decided on the game.progress output before designing it. doing this forces you to scope things down, force to think ahead and settle on one thing

