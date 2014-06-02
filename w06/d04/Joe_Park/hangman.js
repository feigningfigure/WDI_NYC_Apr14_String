function Hangman(words){
	// FILL ME IN
	// this.word = word;
	var word = randomWord(words);
	var playerProgress = [];
	var attempts = 0
	var guesses = [];

	this.progress = function(){
		// FILL ME IN
		if (attempts <5){	
			if (playerProgress.length === 0) {
				for (var i = 0; i < word.length; i++){
					playerProgress.push("_");
				}
			}
			return playerProgress.join(" ");
		} else {
			return word
		}
	};


	this.guess = function(letter) {
		
		if (attempts < 5){
			if (word.indexOf(letter) !== -1){
				for (var i = 0; i < word.length; i++) {
					if (word[i] === letter) {
						playerProgress[i] = letter;
					}
				}
				return true
			} else if (word.indexOf(letter) === -1){
				if (guesses.indexOf(letter) === -1){
					attempts++;
					guesses.push(letter);
				}
				return "you're fucked"
			} 
		} else {
			playerProgress = word.split("", word.length);
			return null
		}
	};


	this.giveup = function(){
		attempts = 5;
		playerProgress = word.split("", word.length);
		return word
	}

	this.incorrect = function(){
		return attempts
	}

	this.guesses = function(){
		return guesses
	}



	function randomWord(words) {
	  return words[Math.floor(Math.random() * words.length)];
	}


}

var words = ["detective"]
var game = new Hangman(words);
// console.log(game.word);
console.log(game.progress()); //=> "_ _ _ _ _ _ _ _ _"
console.log(game.guess("e"));  //=> false
console.log(game.guess("x"));
console.log(game.guess("y"));
console.log(game.guess("x"));
console.log(game.guess("m"));
console.log(game.guesses());
console.log(game.incorrect());
// console.log(game.giveup());
// console.log(game.guess("x"));
// console.log(game.guess("y"));
// console.log(game.guess("p"));
// console.log(game.guess("t"));  //=> true
// console.log(game.guess("x"));
console.log(game.progress());  //=> "_ _ t _ _ t _ _ _"

// "incentive", "perplexed", "gandhi", "school"




// var playerProgress = "";
// for (var i = 0; i < stringLength; i++){
//     playerProgress += "_";
// }  
// return playerProgress;
