function Hangman(word) {

  // this.progress = function(){
  //   var playerProgress = [];
  //   for (var i = 0; i < word.length; i++) {
  //     playerProgress.push("_");
  //   }
  //   return playerProgress.join(" ");
  // };
//////
  var word_array = word.split("");

 var substitution = function(word, word_array){
  for (var i = 0; i < word.length; i++) {
    if (word_array[i] !== letter) {
        word_array[i] = "_";
        var value = "Good guess"
        return word_array + value
        }

var word_counter = 0;

  this.guess = function(letter) {
  for (var i = 0; i < word.length; i++) {
    if (word_array[i] === letter){
      substitution(word, word_array);
    }
   // else {return value = "Bad guess";}
}
word_counter++
// return word_array.join(" ") + " " + word_counter + " " + value


  }

}

var game = new Hangman ("detective");
// console.log(game.progress());
console.log(game.guess("e"));
