function Hangman(word) {
  // FILL IN
  //find out how many letters
  //return the num of letters  
  // print out _ same number as letters 
  // put space in between each _ 
  // word.length
  // puts "_" number of length times 
	this.progress = function() { 
		var playProgress = [];
    for (var i = 0; i < word.length; i++) {
    		playProgress.push("_");
    }
    return playProgress.join(" ");
  };

  // this.guess = function(letter) {
  //   var singleCharacter = []
  //   var get
  //   if(letter.search(singleCharacter) ===  
  //   }			
}
	 
   // var result = "", // initialize list
   //     i;
   // // iterate through arguments
   // for (i = 1; i < arguments.length; i++) {
   //    result += arguments[i] + separator;
   // }
   // return result;

var game = new Hangman("detective");

console.log(game.progress()); //=> " _ _ _ _ _ _ _ _ _"

// var game = new Hangman("gandhi");

// console.log(game.progress()); //=> "_ _ _ _ _ _ "

// console.log(game.guess("a"); //=> false

