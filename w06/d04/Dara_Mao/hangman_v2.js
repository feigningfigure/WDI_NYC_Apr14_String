
game_count = [];
playerProgress = [];

function Hangman (word){
    this.word = word
    this.game_count = game_count;
    this.playerProgress = playerProgress;

    for (var i = 0; i < word.length; i++){
      // Add an underscore to the array
        playerProgress.push("_ ");
    }

//.progress shows whats in the playerProgress array
  this.progress = function(){
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
      game_count.push(1)
      console.log("false")
       // return game_count;
    } else {
      console.log("true")
        //update playerProgress
        playerProgress[index_num] = letter;
        result = playerProgress.join("");
        // console.log(result)
       return true;
     }
     return;
   };

 }


//Calling the function

var game = new Hangman ("detective");
console.log(game.progress());
console.log(game.guess("t"));
console.log(game.progress());
console.log(game.guess("l"));
console.log(game.guess("l"));
console.log(game.guess("l"));
console.log(game.guess("l"));
console.log(game.progress());
console.log(game.guess("e"));
console.log(game.progress());
console.log(game.guess("l"));
console.log(game.guess("d"));
console.log(game.progress());
// console.log(game.progress());
