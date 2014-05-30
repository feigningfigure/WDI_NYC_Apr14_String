function Hangman(word) {
var playerprogress = [];

	this.progress = function(){
		if(playerprogress.length === 0 ){
			for (var i = 0; i < word.length; i++) {
					playerprogress.push("_");
			}
		}

		return playerprogress.join(" ");

	};

	this.guess = function(letter) {
			if(word.indexOf(letter) !== -1){
				for (var i = 0; i < word.length; i++) {
					if(word.charAt(i) === letter){
						playerprogress[i] = letter;
					}
				}
				// function match_letter(letter, index, array){
				// 	array[word.indexOf(letter)] = element;
				// }
				// playerprogress.filter(match_letter(letter));
				return "true"	
			}else{
				return "false"
		}
	};

}

var game = new Hangman("detective");

console.log(game.progress()); //=> "_ _ _ _ _ _ _ _ _"
console.log(game.guess("e"));
console.log(game.guess("t"));
console.log(game.guess("x"));
console.log(game.progress());




word = "mom"
letter = "m"
array = ["-", "-", "-"]
i = 3
if(word.charAt(i) === letter){
	array[i] = letter;
}

// for (var i = 0; i word.length; i++) {
//     if (i == 3) continue;
//     text += "The number is " + i + "<br>";
// }


// var numbersarray=[-3, 5, 34, 19]

// function greaterThanFive(element, index, array) {
//  return (element > 5)
// }

// var FiveplusArray=numbersarray.filter(greaterThanFive) //new array contains [34, 19]