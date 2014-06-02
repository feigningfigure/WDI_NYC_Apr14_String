function Hangman(word){

var playerProgress = Array(word.length+1).join("_").split("");
var position;
var guesses=0;

  this.progress = function(){
    // for (var i =0; i < word.length; i++){
    //   playerProgress.push("_");
    // } //  string => array

  //playerProgress = playerProgress.join(""); // array => string
  return playerProgress.join(""); // array => string
  };

this.guess= function(letter) {
  var array = word.split(""); // word becomes array of letters
  var correctGuess = false;
  for (var i = 0; i <array.length; i++) {
    if (array[i] === letter) { // check to see if letter is the array
       playerProgress[i] = letter; // put the letter at the same index position in player array
      correctGuess = true;
    };
  };
  if (!correctGuess){
    guesses+=1;
    if (guesses >= 5) {
      return null;
    }
    return "Nope. Try again";
  }
  else if(guesses >= 5) {
    return null;
  }
  else if (playerProgress.indexOf("_") == -1 ) {
    return "You won! The word was: "+ playerProgress.join("");
  }
  else if (correctGuess) {
    return playerProgress.join("");
  }

}

this.guesses = function() {
  return guesses;
}
}

//CALLING FUNCTIONS
//var game = new Hangman("hello");
