function Hangman(words) {
	// FILL ME IN
	// this.word = word;
	var word = randomWord(words);
	var playerProgress = [];
	var attempts = 0;
	var guesses = [];
	var hint_counter = 0;

	this.progress = function(){
		// FILL ME IN
		if (attempts < 5) {	
			if (playerProgress.length === 0) {
				for (var i = 0; i < word.length; i++) {
					playerProgress.push("_");
				}
			} 
			return playerProgress.join(" ");
		} else if (attempts >= 5) {
			return word
		} 
	};


	this.guess = function(letter) {
		
		if (attempts < 5){
			if (word.indexOf(letter) !== -1) {
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
				return false
			} 
		} else {
			playerProgress = word.split("", word.length);
			return null
		}
	};


	this.giveup = function() {
		attempts = 5;
		playerProgress = word.split("", word.length);
		return word
	}

	this.incorrect = function() {
		return attempts
	}

	this.guesses = function() {
		return guesses
	}

	this.hint = function(){
		var random = Math.floor(Math.random() * word.length);;
		var letter = word[random];
		if (hint_counter === 0) {
			this.guess(letter);
			hint_counter++;
		} else {

			attempts++;
			this.guess(letter);
		}
		return letter
	}

	function randomWord(words) {
	  return words[Math.floor(Math.random() * words.length)];
	}


}

var words = ["detective"]
var game = new Hangman(words);
console.log(game.progress());
// console.log(game.guess("e"));
// console.log(game.guess("x"));
// console.log(game.guess("y"));
// console.log(game.guess("d"));
// console.log(game.guess("t"));
// console.log(game.guess("c"));
// console.log(game.guess("z"));
// console.log(game.guess("z"));
// console.log(game.guess("i"));
// console.log(game.guess("w"));
// console.log(game.guess("p"));
// console.log(game.guesses());
console.log(game.hint());
console.log(game.incorrect());
console.log(game.hint());
console.log(game.progress());
console.log(game.incorrect());
console.log(game.hint());
console.log(game.incorrect());
console.log(game.progress());
// "incentive", "perplexed", "gandhi", "school"

// word.split("").join(" ").length === playerProgress) {
// 			return "You've won"
// 		}


// var playerProgress = "";
// for (var i = 0; i < stringLength; i++){
//     playerProgress += "_";
// }  
// return playerProgress;
