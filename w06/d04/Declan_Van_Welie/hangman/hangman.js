function Hangman(word) {

  this.progress = function(){

    var playerProgress = []

   for (var i = 0; i < word.length; i++) {
    playerProgress.push("_");

    };


    return playerProgress.join(" ");
  }

}




var game = new Hangman ("ghandi");

console.log(game.progress());
