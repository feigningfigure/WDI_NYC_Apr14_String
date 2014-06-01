function Hangman(word) {
	var letter_array = [];
	function length() {
		return letter_array.length;
	}
	var array = word.split('');
	
	this.guess = function(guess_letter){
		letter_array.push(guess_letter);
		for (var i=0; i < array.length; i++) {
			if (array[i] === letter_array[length() - 1]) {
				return true;
			} 
		}
		return false;
	};


	this.progress = function(){
		var progress_array = []
		for (var i=0; i < array.length; i++) {
			if (length() > 0) {
				if(array[i] === letter_array[length() - 1]) {
					progress_array.push(array[i]);
				} else {
				progress_array.push('_');
				}
			}
			else {
				progress_array.push('_');
			}
		}
		return progress_array.join(' ');
	};
}

var game = new Hangman("detective");

game.guess('t');


