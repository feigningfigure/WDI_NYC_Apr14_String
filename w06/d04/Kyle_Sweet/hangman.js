function Hangman (word) {
  
  this.progress = function(){
    
    var playerProgress = [];
    for (var i = 0; i < word.length; i++) {
      playerProgress.push("_");
    }
    return playerProgress.join(" ");
};

  function guess(letter){
  if (guess === word) {
    return "true"
  }
  else if {
    return "false"
  };
  // }


  
var game = new Hangman("detective");
console.log(game.progress());
// console.log(game.guess("a"));
// console.log(game.guess("t"));

var game = new Hangman("gandhi");
console.log(game.progress());
  
