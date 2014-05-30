function Hangman(word){
	// FILL ME IN
	var stringLength = word.length;
	var splitString = word.split("", stringLength);

	this.word = word;

	this.progress = function(){
		// FILL ME IN
		var playerProgress = [];

		for (var i = 0; i < word.length; i++){
			playerProgress.push("_");
		}

		return playerProgress.join(" ");
		
	};

}



	// var string_length = word.length;

	// var split_string = word.split("", string_length);



var game = new Hangman("detective");

console.log(game.progress()); //=> "_ _ _ _ _ _ _ _ _"

var game = new Hangman("gandhi");

console.log(game.progress()); //=> "_ _ _ _ _ _"