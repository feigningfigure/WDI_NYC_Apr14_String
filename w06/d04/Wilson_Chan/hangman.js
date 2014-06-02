// setting a top level scope variable word 'detective'
// var targetWord = 'detective',

function Hangman(word){
  this.progress = function(){

    var playerProgress = [];

    for (var i =0; i<word.length; i++){
      playerProgress.push("_");
    } //  string => array

  return playerProgress.join (" "); // array => string
};
}

var game = new Hangman("detective");{
  this.clue = "abcdefghijklmnopqrstuvwxyz".split("");
  this.word = word;
  this.correctGuesses = [];
  for(var j=0; j<word.length; j++) {
      this.correctGuesses[j] = "*";
  };
  this.incorrectGuesses = [];
  this.end = false;
};

guess = function(letter){
  wordArray = this.clue.split("");

  var wordContainsLetter = false;
  var isValidInput = false;
  var alreadyGuessed = false;

  for(var k=0; k<this.clue.length; k++){
    if(this.clue[k] === letter){
      isValidInput = true;
    }
  };

  for(var j=0; j<this.guesses.length; j++){
    if(this.guesses[j] === letter){
      alreadyGuessed = true;
    }
  };

    //  //another conditional version (must add variable above)
    //   // Convert user letter to lowercase
    // userGuess = userGuess.toLowerCase();

    // for (x = 0; x < splitWord.length; x++) {
    //     // Check to see if the letter exists in the word
    //     if (userGuess == splitWord[x]) {
    //         // Add their guess to guesses
    //         guesses.push(userGuess);
    //         // If it does exist, replace the proper _ position
    //         // With the guessed letter
    //         underscore.replace([x], userGuess);
    //     }
    //     // If it does not exist, add their guess to wrong guesses
    //     else if (userGuess != splitWord[x]) {
    //         wrongGuesses.push(userGuess);
    //         numOfGuesses--;
    //     }
    // }

// pick a letter at random function
//targetLetter, a global variable set above, is picking a wordlist from the json file at random.
//Math.random returns a number in a range from 0 < 1. It will never return 1 itself.
//and then, we multiply by the numbers in wordlist // Math.floor rounds down to the nearest whole number
// function newLetter() {
//     targetletter = letter[Math.floor(Math.random() * letter.length)];
// }


console.log(game.progress()); //=>"_ _ _ _ _ _ _ _ _"
// game.guess("a");  //=> false
// game.guess("t");  //=> true
// game.progress();  //=> "_ _ t _ _ t _ _ _"
