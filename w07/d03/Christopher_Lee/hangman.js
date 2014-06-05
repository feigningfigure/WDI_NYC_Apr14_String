function getAllIndexes(arr, val) {
    var indexes = [], i;
    for(i = 0; i < arr.length; i++)
        if (arr[i] === val)
            indexes.push(i);
    return indexes;
}

function Hangman(word) {
  var guesses = [];
    var word_two = word.split("");
  this.progress = function(){
    // if you test this you will see that this does not have a forEach method. word.forEach(function(letter)
    if(guesses.length == 0){
      word_two.forEach(function(letter) {
      guesses.push("_");
      });
      return guesses.join(" ");
    }else{
      return guesses.join(" ");
    }

  }

  this.guess = function(letter){
    if (word_two.indexOf(letter) != -1){
      var letter_indexes = getAllIndexes(word_two, letter)
      letter_indexes.forEach(function(index){
        guesses[index] = letter;
      });
    } else {
      return false
    }
  };

}

var game = new Hangman("detective");
// Painters jump around: painters don't rest with brush on the canvas

//console.log("_ _ _ _ _ _ _ _ _");
// Think ahead and force yourself to settle on your inputs and outputs
console.log(game.progress());


console.log(game.guess("a"));
// should return false
console.log(game.guess("d"));
// should return 0
console.log(game.progress());
// NOW: should return d _ _ _ _ _ _ _ _
console.log(game.guess("e"));
// should return 1, 3, 8
console.log(game.progress());
// NOW: should return d e _ e _ _ _ _ e

// console.log(true);
// console.log(game.guess("d"));

// // Comment these out and leave them as sccafolding

// console.log("d _ _ _ _ _ _ _ _");

