function Hangman(words) {
	var word = words[Math.floor(Math.random() * words.length)]
	var playerprogress = [];
	var guessed_letters = [];
	var count = 0;
	var hint_count = 0;


	this.progress = function(){
		if (playerprogress.length === 0 ){
			for (var i = 0; i < word.length; i++) {
				playerprogress.push("_");
			}
		}
		return playerprogress.join(" ");
	};

	this.guess = function(letter) {
		if (count < 5){
			if (word.indexOf(letter) !== -1){
				for (var i = 0; i < word.length; i++) {
					if (word.charAt(i) === letter){
						playerprogress[i] = letter;
					}
				}
				guessed_letters.push(letter);
				return "true"	
			}else{
				if(guessed_letters.indexOf(letter) === -1){
					count++;
					guessed_letters.push(letter);
				}
				return "false"
			}
		}else{
			playerprogress = word.split("")
			return null
		}
	};

// why does this have to be a function?
	this.guesses = function() {
		return guessed_letters
	};

	this.giveUp = function(){
		count = 5;
		return word
	};

// why does this have to be a function?
	this.incorrect = function() {
		return count
	};

	this.hint = function() {
		for (var i = 0; i < word.length; i++) {
			if (word.charAt(i) !== playerprogress[i]) {
				playerprogress[i] = word.charAt(i);
				hint_count++;
					if (hint_count > 1) {
						count++;
					} 
				return word.charAt(i)
			}
		}
	};

}

var game = new Hangman(["detective"]);
// var game = new Hangman(["camera", "picture", "gandhi"]);

console.log(game.progress()); //=> "_ _ _ _ _ _ _ _ _"
console.log(game.guess("e")); 
// console.log(game.guess("c"));
// console.log(game.guess("x")); //#1
console.log(game.progress());
// console.log(game.giveUp());
console.log(game.guess("x")); //#2
// console.log(game.guess("y")); //#3
// console.log(game.guess("x")); //#4
// console.log(game.guess("x")); //#5
// console.log(game.guess("x")); //#6
// console.log(game.progress());
console.log(game.guesses());
console.log(game.incorrect()); //=>2
console.log(game.hint());
console.log(game.progress());
console.log(game.incorrect()); //=>2
console.log(game.hint());
console.log(game.progress());
console.log(game.incorrect()); //=>3




