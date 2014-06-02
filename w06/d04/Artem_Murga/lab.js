// ## Phase 1 - Basics

// - The game is passed a word
// - The player can view their progress of discovered letters
// - If a player guesses a correct letter, return `true`, and every instance of that letter should be revealed


function Hangman (word) {

	guessed_letters = []
	// console.log(geuessed_word = word.replace(/guessed_letters.toString()/g, " _ "));
	guessCounter = [];

	this.word = word;
	this.hiddenWord = function(){
	console.log(word.replace(/[a-z]/g, " _ "));
	}
	this.guess = function(letter) {
		guessCounter = []
		if (guessCounter.length < 5) {
			if (word.indexOf(letter) > -1) 
			{console.log("we have such letter"); 
			// console.log(word.replace(/[a-z]/g, " _ "));

			asterisks = word.replace(letter, "*")
			hidden_all = asterisks.replace(/[a-z]/g, " _ ");
			console.log(hidden_all.replace("*", letter))
			guessed_letters.push(letter)
			guessCounter.push(1) 
			console.log(guessCounter)
			return true;
			}
			else 
			{console.log("no such letter"); 
			console.log(word.indexOf(letter))
			return false;
				};
		};
		else{console.log("You lost")};

	};
		
}



game = new Hangman("art")
if (true) {} else{};
/////////

game.hiddenWord(game)
game.guess("a")
game.guess_counter

// console.log(guessed_word)
// console.log(guessed_letters)