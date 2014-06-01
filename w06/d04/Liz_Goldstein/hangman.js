function Hangman(word) {

  this.progress = function(){
    var playerProgress = [];
    for (var i = 0; i < word.length; i++) {
      playerProgress.push("_");
    }
    return playerProgress.join(" ");
  };
////////
  this.guess = function(letter) {

  var word_array = word.split("");

  for (var i = 0; i < word.length; i++) {
    if (word_array[i] !== letter) {
        word_array[i] = "_";
        }

    else { false; return "bad guess";}
}
return word_array.join(" ");


  }

}

var game = new Hangman ("detective");
// console.log(game.progress());
console.log(game.guess("x"));
