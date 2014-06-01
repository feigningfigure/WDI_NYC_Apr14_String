function Hangman(word){
	// FILL ME IN
	this.word = "hello";

	var wordLength = this.word.length;
	var splitString = this.word.split("", wordLength);
	var joinedString = splitString.join(" ");
	

	this.progress = function(){
		// FILL ME IN
		var playerProgress = [];
		for (var i = 0; i < wordLength; i++){
			playerProgress.push("_");
		}
		return playerProgress.join(" ");
	};

	this.guess = function(letter){
		for (var i = 0; i < joinedString.length; i++){
			if(joinedString.match(letter)){
				return true;
			}else{
				return false;
			}
		}
	};
}


var game = new Hangman("detective");

console.log(game.progress()); //=> "_ _ _ _ _ _ _ _ _"
console.log(game.guess("f"));  //=> false
console.log(game.guess("d"));
console.log(game.guess("e"));
console.log(game.guess("v"));
console.log(game.guess("i"));  //=> true
console.log(game.progress());  //=> "_ _ t _ _ t _ _ _"

// var words = ["blah", "hello", "gandhi"]
// function randomWord(words) {
//     return words[Math.floor(Math.random() * words.length)];
// }


// var playerProgress = "";
// for (var i = 0; i < stringLength; i++){
//     playerProgress += "_";
// }  
// return playerProgress;



