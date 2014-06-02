
function Hangman(arrayOfWords) {
	var correct_guess_array = [];
	var incorrect_guess_array = [];
	var gameOn = true;
	var word = arrayOfWords[randomIndex(arrayOfWords.length)];
	var array = word.split('');
	var hintCount = 0;
	
	function randomIndex(arrayLength) {
		return Math.floor(Math.random() * arrayLength);
	}

	function correct_guess_array_length() {
		return correct_guess_array.length;
	}

	function incorrect_guess_array_length() {
		return incorrect_guess_array.length;
	}

	function hintCounter() {
		hintCount++;
	}

	this.turns = function() {
		return incorrect_guess_array_length() + hintCount;
	};

	this.guess = function(guess_letter){
		if (this.turns() < 5 && gameOn === true) {
			for (var i=0; i < array.length; i++) {
				if (array[i] === guess_letter) {
					correct_guess_array.push(guess_letter);
					return true;
				} 
			}
			if (incorrect_guess_array_length() > 0) {
				for (var i=0; i < incorrect_guess_array_length(); i++) {
					if (incorrect_guess_array[i] === guess_letter) {
						console.log("You guessed this letter already!");
						return false;
					}						
				}
				incorrect_guess_array.push(guess_letter);
				return false;	
			} else {
				incorrect_guess_array.push(guess_letter);
				return false;
			}	
		} else {
			console.log("Game is OVER.");
			console.log("Your Word: " + word)
			return null;
		}
	};

	this.progress = function(){
		var progress_array = []
		for (var i=0; i < array.length; i++) {
			progress_array.push('_');
		}
		if (correct_guess_array_length() > 0) {
			for (var i=0; i < array.length; i++) {
				for (var j=0; j < correct_guess_array_length(); j++) {
					if(array[i] === correct_guess_array[j]) {
						progress_array[i] = array[i];
					} 
				}
			}
		}
		return progress_array.join(' ');
	};

	this.giveUp = function () {
		gameOn = false;
		return word;
	}

	this.incorrect = function () {
		return incorrect_guess_array_length();
	}

	this.guesses = function() {
		return correct_guess_array.concat(incorrect_guess_array);
	}

	//randomly selecting a correct letter
	this.hint = function() {
		var localCorrectGuessArray = correct_guess_array;
		var localWordArray = array;
		if (correct_guess_array_length() > 0) {
			for (var i=0; i < array.length; i++) {
				for (var j=0; j < correct_guess_array_length(); j++) {
					if(localWordArray[i] === localCorrectGuessArray[j]) {
						localWordArray.splice(i, 1);
					} 
				}
					}		
		var remainingCorrectGuesses = localWordArray;
		var hint = remainingCorrectGuesses[randomIndex(remainingCorrectGuesses.length)];
		console.log(hint);
		this.guess(hint);
		hintCounter();
		return this.progress;
	}
}

var game = new Hangman(["detective"]);
// Storing an instance of the Hangman "function" here - where game = "detective" - instantiates var correct_guess_array (the first line of the body of the function).  When calling other functions internal to Hangman, correct_guess_array does NOT get reset to [], but rather carries the value accumulated over the course of previous internal (i.e. Hangman) function calls.



