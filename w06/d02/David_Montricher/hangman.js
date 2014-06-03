function Hangman(word){
}
  this.progress = function(){
    var array = word.split("");
    characterCount = array.length;
    console.log("");
  };

var game = new Hangman("detective");

game.progress(); //=> "_ _ _ _ _ _ _ _ _"
