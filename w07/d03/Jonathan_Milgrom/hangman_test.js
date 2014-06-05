function Hangman(word) {
   var guesses = [];
    this.progress = function() {
       	temporary_array = [];
        word.split("").forEach(function(letter) {
            temporary_array.push("_");
        });

        return temporary_array.join(" ");
    };

    this.guess = function(guess_letter) {
    	var bool = false
    	word.split("").forEach(function(letter) {
    		 if (letter === guess_letter) {
    			bool = true;
    		}

    	}); 

    	if (bool === true) {
    		guesses.push(guess_letter);
    	}

    	console.log(guesses);

    	return bool;
    };
}

var game = new Hangman("detective");


console.log("_ _ _ _ _ _ _ _ _")
console.log(game.progress());

console.log(game.guess('t'));
console.log(game.guess('w'));

