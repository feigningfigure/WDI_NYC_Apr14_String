function Hangman(word) {

	this.progress = function(){
		var letters = [];

		for (var i = 0; i < word.length; i++) {
			letters.push("_");
		}

		return letters.join(" ");

	};

}

var game = new Hangman("detective");

console.log(game.progress()); //=> "_ _ _ _ _ _ _ _ _"
