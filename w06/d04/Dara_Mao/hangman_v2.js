
function Hangman (word){
  this.word = word
  this.playerProgress = [];

  this.progress = function(){
    playerProgress = [];
    for (var i = 0; i < word.length; i++){
      // Add an underscore to the array
      playerProgress.push("_ ");
    }
    var index_num = -1;
    // index_num = word.indexOf(new_word)
    // playerProgress[index_num] = new_word;
    // Convert the array back to a string
    result = playerProgress.join("");
    return result; // array => string
  };

  this.guess = function(letter){
    var index_num = -1;
    index_num = word.indexOf(letter)
    if (index_num === -1){
      console.log("false")
    } else {
      console.log("true")
        //update playerProgress
        playerProgress[index_num] = letter;
        result = playerProgress.join("");
        console.log(result)

       return letter;
     }
     return;
   };


 }


//Calling the function
// var game = new Hangman ("detective");

// console.log(game.progress()); // produces "--------" by splitting the letters into an array and splitting it back into a word

var game = new Hangman ("desk");


console.log(game.progress());

console.log(game.guess("k"));

// console.log(game.progress());
console.log(game.guess("e"));
console.log(game.guess("l"));
console.log(game.guess("d"));


// console.log(game.progress());
// console.log(game.progress());
