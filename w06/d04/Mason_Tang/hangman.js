function Hangman(word) {



  var playerProgress = []




  this.progress = function(){

    if (playerProgress.length === 0) {
    for(i = 0; i < word.length; i ++) {
      playerProgress.push("_");
    }} else {
      for (i in indices) {
      playerProgress[indices[i]] = "e"
  }
    }

    return playerProgress.join(" ");
  };


  word_array = word.split("")



var index, indices = [];
 this.guess = function(letter) {
    var startIndex = 0, letterLen = letter.length;


    while ((index = word.indexOf(letter, startIndex)) > -1) {
        indices.push(index);
        startIndex = index + letterLen;
    }
    if (indices.length > 0) {

      return indices
    } else {
      return false
    }
  }









}







var game = new Hangman("detective");
//split detective into array of letters
//spit back underscore with spaces
console.log(game.progress()); //=> "_ _ _ _ _ _ _ _"

var game = new Hangman("gandhi");

console.log(game.progress()); //=> "_ _ _ _ _ _"

game.guess("a")


