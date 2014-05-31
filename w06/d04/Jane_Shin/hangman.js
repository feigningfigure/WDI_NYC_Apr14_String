function Hangman(words) {
var word = words[Math.floor(Math.random() * words.length)]
var playerprogress = [];
var count = 0;

	this.progress = function(){
		if(playerprogress.length === 0 ){
			for (var i = 0; i < word.length; i++) {
				playerprogress.push("_");
			}
		}
		return playerprogress.join(" ");
	};

	this.guess = function(letter) {
		if(count < 5){
			if(word.indexOf(letter) !== -1){
				for (var i = 0; i < word.length; i++) {
					if(word.charAt(i) === letter){
						playerprogress[i] = letter;
					}
				}
				return "true"	
			}else{
				console.log(count++);
				return "false"
			}
		}else{
			playerprogress = word.split("")
			return null
		}
	};

	this.giveUp = function(){
		count = 5;
		return word
	};

}

// var game = new Hangman("detective");
var game = new Hangman(["camera", "picture", "gandhi"]);

console.log(game.progress()); //=> "_ _ _ _ _ _ _ _ _"
console.log(game.guess("e")); 
console.log(game.guess("c"));
console.log(game.guess("x")); //1
console.log(game.progress());
console.log(game.giveUp());
console.log(game.guess("x")); //2
// console.log(game.guess("x")); //3
// console.log(game.guess("x")); //4
// console.log(game.guess("x")); //5
// console.log(game.guess("x")); //6
console.log(game.progress());




// node testing ========================

// word = "mom"
// letter = "m"
// array = ["-", "-", "-"]
// i = 3
// if(word.charAt(i) === letter){
// 	array[i] = letter;
// }