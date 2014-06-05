//Was sick this weekend, please pardon my level of incompletion...


function Hangman(word) {
  var wordArray = word.split("")
  var wrongGuesses = []
  var correctGuesses = []
  var playerProgress = []

//PHASE 1 - BASICS
  this.progress = function(){
    for(i = 0; i < word.length; i ++) {
      playerProgress.push("_");
    };
    return playerProgress.join(" ");
  };

//PHASE 2 - END GAME
  this.guess = function(letter){
    
var wrongAnswer = word.search(letter) === -1
var rightAnswer = word.search(letter) !== -1


// USE .INDEXOF INSTEAD 
    if(wrongAnswer && wrongGuesses.length <= 4){
      return false;
      wrongGuesses.push(letter);} else if (rightAnswer && wrongGuesses.length <= 4) {
      return true;
      correctGuesses.push(letter);
    }; else if (wrongGuesses.length === 4) {
      return null;
      progress() = word;
    };

// return word with progress()
}

    //USER GIVES UP



//PHASE 4 - EDGE CASES AND INFORMATION
    this.incorrect = function(){

    };

//PHASE 5 - HINTS
    this.hint = function(){

    };
}


            //CORRECT GUESSES REVEALS LETTERS
    //COUNTS NUMBER OF WRONG GUESSES AND RETURNS THE WORD, IF = 5

var game = new Hangman("detective");

game.progress(); //=> "_ _ _ _ _ _ _ _ _"


var game = new Hangman("gandhi");

game.progress(); //=> "_ _ _ _ _ _"


javascript var game = new Hangman("detective"); game.progress(); //=> "_ _ _ _ _ _ _ _ _" 


game.guess("b"); //=> false 
game.guess("z"); //=> false 
game.guess("y"); //=> false 
game.guess("e"); //=> true 
game.progress(); //=> "_ e _ e _ _ _ _ e" 

game.guess("v"); //=> false 

game.guess("k"); //=> null // the game is over, so even correct guesses are ignored 

game.guess("d"); //=> null game.progress(); //=> "detective"



wordArray []
guessesArray []

word_array = word.split("")
  // var wordArray = word.split("");

// <---- S C R A P ---------------->



      if(wrongGuesses.length === 4){
        return null;
        this.progress() = word
      } 

// function Hangman(word) {
//   this.progress = function(){
//     for(i = 0; i < word.length; i ++) {
//       process.stdout.write("_ ");
//     };
//   };
// }

    // for(i = 0; i < word.length; i ++) {
      // console.log("_ ");

    // };
  //     i = word.length;
  // return "_ " * i