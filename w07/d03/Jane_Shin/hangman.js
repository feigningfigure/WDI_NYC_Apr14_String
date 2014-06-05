function Hangman(word) {

var guesses = [];

	this.progess = function(){
		if (guesses.length === 0) {
			word.split("").forEach(function(letter){
				guesses.push("_");
			});
		}
		// 	return guesses.join(" ");
		// } else {
			return guesses.join(" ");
		// }
	};

	this.guess = function(letter){
		// console.log(word.length);
		for (var i=0; i < word.length; i++) {
			if (word[i] === letter) {
				// for (var i=0; i < word.length; i++) {
					// guesses[i] = letter;
				// }
				return "true"
			guesses[i] = letter;				
			} else {
				return "false"
			}
		}
	};

}
var game = new Hangman("detective");

// console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progess());

console.log(false);
console.log(game.guess("a"));
// console.log(game.progess());

console.log(true);
console.log(game.guess("d"));
// console.log(game.progess());
console.log(true);
console.log(game.guess("e"));
// console.log(game.progess());
