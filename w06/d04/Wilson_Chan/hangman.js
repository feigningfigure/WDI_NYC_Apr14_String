function Hangman(word){
  this.progress = function(){

    var playerProgress = [];

    for (var i =0; i<word.length; i++){
      playerProgress.push("_");
    } //  string => array

  return playerProgress.join (" "); // array => string
};
}

var game = new Hangman("hello");

console.log(game.progress()); //=>"_ _ _ _ _ "

