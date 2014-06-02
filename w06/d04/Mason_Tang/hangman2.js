function Hangman(word) {


  var playerProgress = []

  this.progress = function(){
    for(i = 0; i < word.length; i ++) {
      playerProgress.push("_");
    };
    return playerProgress.join(" ");
  };


  word_array = word.split("")



  this.guess = function(letter){
    var index = word_array.indexOf(letter);
    console.log(index)


  }







}







var game = new Hangman("detective");
//split detective into array of letters
//spit back underscore with spaces
console.log(game.progress()); //=> "_ _ _ _ _ _ _ _"

var game = new Hangman("gandhi");

console.log(game.progress()); //=> "_ _ _ _ _ _"

game.guess("a")


