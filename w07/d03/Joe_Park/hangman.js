function Hangman(word){
	
	var guesses = [];

	this.progress = function(){
		if (guesses.length === 0) {	
			word.split("").forEach(function(letter){
				guesses.push("_");
			});
		}
		return guesses.join(" ");
	};

	this.guess = function(letter){
		if ( word.indexOf(letter) !== -1) {
			for (var i = 0; i < word.length; i++) {
				i = word.split("").indexOf(letter);
				guesses[i] = letter;
				return true;
			}	
		} else {
			return false;
		}
	};
}

var game = new Hangman("detective");


console.log("_ _ _ _ _ _ _ _ _");
console.log(game.progress());

console.log(false);
console.log(game.guess("a"));

console.log(true);
console.log(game.guess("d"));

console.log("d _ _ _ _ _ _ _ _");
console.log(game.progress());

console.log(true);
console.log(game.guess("t"));

console.log("d _ t _ _ t _ _ _");
console.log(game.progress());