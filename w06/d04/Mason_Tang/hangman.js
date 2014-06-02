function Hangman(word) {


  var playerProgress = []

  this.progress = function(){
    for(i = 0; i < word.length; i ++) {
      playerProgress.push("_");
    };
    return playerProgress.join(" ");
  };

}



var game = new Hangman("detective");
//split detective into array of letters
//spit back underscore with spaces
console.log(game.progress()); //=> "_ _ _ _ _ _ _ _"

var game = new Hangman("gandhi");

console.log(game.progress()); //=> "_ _ _ _ _ _"

game.guess("a")


