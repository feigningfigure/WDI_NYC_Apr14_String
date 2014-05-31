function Hangman(word) {
  // this.word = word;

  this.progress = function(){

    var playerProgress = []

   for (var i = 0; i < word.length; i++) {
    playerProgress.push("_")

    };


    return playerProgress.join
  }

//   this.guess = function(letter){
//     //we first want to break the string into an array of characters. Then we want to check if any of the characteres in that array match the letter.
//     //If not, we replace the letter currently at that index with "-". If so, nothing happens

//     //for each letter in a string
//     for (var i = 0; i < word.length; i++){
//     if (contains(word, letter)) {
//       console.log("true");
//        playerProgress.push(letter);
//     } else {
//       console.log("false");
//       playerProgress.push("_");
//     }

//     return playerProgress.join
// }


word = "hello"

playerProgress = []

//What you first want to do is set each character to a variable, dynamically.
//

  guess = function(letter){


    for (var i = 0; i < word.length; i++){
    if (word[i] === letter) {
      console.log("true");
      playerProgress.push(letter);
    } else {
      console.log("false");
      playerProgress.push("_");
    }

    return playerProgress.join
}

}

//THe below works:!!!


 guess = function(letter){


    for (var i = 0; i < word.length; i++){
   if (word[i] === letter) {
      console.log("true");
       playerProgress.push(letter);
    } else {
      console.log("false");
      playerProgress.push("_");
    }
  }

    return playerProgress.join
 }






var game = new Hangman();

game.progress("ghandi"); //=>"_ _ _ _ _"

// game.guess("a");

// game.guess("t");


// Ruby version:
// class Hangman
//   def initialize(word)
//     @word = word
//       end

    // def progress()
    // end
//     end

// game = Hangman.new("detective")

// game.progress()

// game = Hangman.new("ghandi")

// puts game.progress()

//splice method will replace a given value at a given index with a new specified index.
//playerProgress.splice(letter_index[l]
