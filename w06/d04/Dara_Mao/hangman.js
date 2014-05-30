function Hangman (word){
  var word_array;
  var positions;
  var slots;

  // define the behavior of the object
  this.progress = function(){

    word_array = word.split("")
    slots = word_array.length
    var array = new Array(slots);
    for (var i = 0; i < slots; i++){
       array.push("_")
      }
        return array;
  }

}

var game = new Hangman ("detective");

game.progress(); // produces "--------" by splitting the letters into an array and splitting it back into a word

var game = new Hangman ("gandhi");

game.progress();
